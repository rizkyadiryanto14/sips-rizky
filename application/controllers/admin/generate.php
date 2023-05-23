<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class GenerateSempro extends MY_Controller {
   	
    private $PRAKTIKUM = 'PRAKTIKUM';
    private $TEORI = 'TEORI';
    private $LABORATORIUM = 'LABORATORIUM';
    
    private $jenis_semester;
    private $tahun_akademik;
    private $populasi;
    private $crossOver;
    private $mutasi;
    
    private $pengampuu = array();
    private $pengampu = array();
    private $individu = array(array(array()));
    private $sks = array();
    private $guru = array();
	private $prodi = array();
	private $jurusan ;
	private $kuota_pengampu = array();
	private $kelas = array();
	private $ruang_pilihan = array();
	private $semester = array();
    
    private $jam = array();
    private $hari = array();
    private $iguru = array();
    private $itersedia = array();
    private $itersediaa = array();
    
    //waktu keinginan guru
    private $waktu_guru = array(array());
    private $waktu_tersedia = array(array());
    private $jenis_mk = array(); 
    
    private $kuota_ruangReguler = array();
    private $kuota_ruangLaboratorium = array();
    private $ruangLaboratorium = array();
    private $ruangReguler = array();
    private $logAmbilData;
    private $logInisialisasi;
    
    
    private $induk = array();
    
    //jumat
    private $kode_jumat;
    private $range_jumat = array();
    private $kode_dhuhur;
    private $is_waktu_guru_tidak_bersedia_empty;

	public function index()
	{
		return $this->load->view('admin/generatesempro');
	}
	
	
		public function proses()
	{   
	  

		$data = array();
		$time = microtime();
			$time = explode(' ', $time);
			$time = $time[1] + $time[0];
			$start = $time;			
				//tempat keajaiban dimulai. SEMANGAAAAAATTTTTTT BANZAIIIIIIIIIIIII !
				
				$jenis_semester = $this->input->post('semester_tipe');
				$prodi = 'INFORMATIKA';
				
				
				$tahun_akademik = $this->input->post('tahun_akademik');
				
				$crossOver = $this->input->post('probabilitas_crossover');
				$mutasi = $this->input->post('probabilitas_mutasi');
				$jumlah_generasi = $this->input->post('jumlah_generasi');
				$data['semester_a'] = $jenis_semester;
				$data['tahun_a'] = $tahun_akademik;
				$data['prodi'] = $prodi;
				$datas['semester_tipe'] = $jenis_semester;
				$datas['tahun_akademik'] = $tahun_akademik;
				
				$datas['probabilitas_crossover'] = $crossOver;
				$datas['probabilitas_mutasi'] = $mutasi;
				$datas['jumlah_generasi'] = $jumlah_generasi;
				
				$rs_data = $this->db->query("SELECT  * from dosen");
				
				
				if($rs_data->num_rows() == 0){
					
					$data['msg'] = 'Tidak Ada Data dengan Semester dan Tahun Akademik ini <br>Data yang tampil dibawah adalah data dari proses sebelumnya';
					
					//redirect(base_url() . 'web/penjadwalan','reload');
				}else{
					$n=0;
					
					if($rs_data->num_rows() % 2 == 0 ){
						$jumlah_populasi =$rs_data->num_rows();
					}
					else{
						$jumlah_populasi =$rs_data->num_rows() + 1;
					}
					
					$this->AmbilData($jenis_semester, $tahun_akademik, $jumlah_populasi,$prodi);
					$this->Inisialisai($jumlah_populasi);
					
					
					
					$found = false;
					
					for($i = 0;$i < $jumlah_generasi;$i++ ){
						$fitness = $this->HitungFitness($jumlah_populasi,$prodi);
						
						//if($i == 100){
						//	var_dump($fitness);
						//	exit();
						//}
						
						$this->Seleksi($fitness,$jumlah_populasi);
						$this->StartCrossOver($jumlah_populasi,$crossOver);
						
						$fitnessAfterMutation = $this->Mutasi($jumlah_populasi,$mutasi,$prodi);
						
						for ($j = 0; $j < count($fitnessAfterMutation); $j++){
							//test here
							if($fitnessAfterMutation[$j] == 1){
								
								$this->db->query("TRUNCATE TABLE jadwalpelajaran");
								
								$jadwal_kuliah = array(array());
								$jadwal_kuliah = $this->GetIndividu($j);
								
								
								
								for($k = 0; $k < count($jadwal_kuliah);$k++){
									
									$kode_pengampu = intval($jadwal_kuliah[$k][0]);
									$kode_jam = intval($jadwal_kuliah[$k][1]);
									$kode_hari = intval($jadwal_kuliah[$k][2]);
									$kode_ruang = intval($jadwal_kuliah[$k][3]);
									$this->db->query("INSERT INTO jadwalpelajaran(kode_pengampu,kode_jam,kode_hari,kode_ruang) ".
													 "VALUES($kode_pengampu,$kode_jam,$kode_hari,$kode_ruang)");									
									
								}
								
								//var_dump($jadwal_kuliah);
								//exit();
								
								$found = true;								
							}
							
							if($found){break;}
						}
						
						if($found){break;}
					}
					
					if(!$found){
						$data['msg'] = 'Tidak Ditemukan Solusi Optimal';
					}
					else{
					$time = microtime();
					$time = explode(' ', $time);
					$time = $time[1] + $time[0];
					$finish = $time;
					$total_time = $finish - $start ;
					$total_menit = round(($total_time / 60), 4) ;
					$data['waktu'] = "Selesai dalam ".$total_menit." menit";	
					}
					
				}
		
			
		
	    
		
	}
	
	
	    public function AmbilData($jenis_semester, $tahun_akademik, $jumlah_populasi,$prodi)
    {		
			
			$this->jenis_semester = $jenis_semester;
			$this->tahun_akademik = $tahun_akademik;
			$this->populasi       = $jumlah_populasi;
			
	    $rs_data = $this->db->query("SELECT * from dosen");
        $i = 0;
        foreach ($rs_data->result() as $data) {
            $this->pengampu[$i] = intval($data->id);
            $this->sks[$i]         = intval(1);
            $this->guru[$i]       = intval($data->id);
			$this->prodi[$i]       = intval(1);
			$this->semester[$i]       = intval(1);
			$this->kelas[$i]       = intval(1);
			$this->ruang_pilihan[$i]       = intval(1);
			$this->kuota_pengampu[$i]       = intval(3);
            $this->jenis_mk[$i]    = 'MK';
            $this->jurusan    = 'JR';
            $i++;
        }
		
		
        
		
        //var_dump($this->jenis_mk);
        //exit();
        
        //Fill Array of Jam Variables
        $rs_jam = $this->db->query("SELECT id FROM jam");
        $i      = 0;
        foreach ($rs_jam->result() as $data) {
            $this->jam[$i] = intval($data->id);
            $i++;
        }
        
        //Fill Array of Hari Variables
        $rs_hari = $this->db->query("SELECT id FROM hari");
        $i       = 0;
        foreach ($rs_hari->result() as $data) {
            $this->hari[$i] = intval($data->id);
            $i++;
        }
        
       	$rs_RuangReguler = $this->db->query("SELECT id from ruangan");
		
        $i               = 0;
        foreach ($rs_RuangReguler->result() as $data) {
            $this->ruangReguler[$i] = intval($data->id);
			$this->kuota_ruangReguler[$i] = intval(1);
            $i++;
        }
        
        $rs_Ruanglaboratorium = $this->db->query("SELECT id from ruangan");			
		
        $i                    = 0;
        foreach ($rs_Ruanglaboratorium->result() as $data) {
            $this->ruangLaboratorium[$i] = intval($data->id);
            $this->kuota_ruangLaboratorium[$i] = intval(1);
            $i++;
        }
        
        //var_dump($this->ruangLaboratorium);
        //exit(0);
        
        $rs_Waktuguru = $this->db->query("SELECT id,jadwal FROM dosen WHERE jadwal IS NOT NULL");        
        $i             = 0;
		
		foreach ($rs_Waktuguru->result() as $data) {
            $this->iguru[$i]         = intval($data->id);
            $this->waktu_guru[$i][0] = intval($data->id);
            $this->waktu_guru[$i][1] = $data->jadwal;
            $i++;
        }  
		
// 		if($prodi==true){
// 						$rs_Waktutersedia = $this->db->query("SELECT a.kode,".		
// 											  "a.kode_pengampu,".
// 											  "b.kode,".
// 											  "b.kode_guru,".
// 											  "CONCAT_WS(':',a.kode_hari,a.kode_jam,a.kode_ruang) as kode_hari_ruang , ".
// 											  "c.kode ,".
// 											  "c.semester_tipe ".
// 											  "FROM riwayat_penjadwalan a ".
// 											  "LEFT JOIN pengampu b ".
// 											  "ON a.kode_pengampu = b.kode ".
// 											  "LEFT JOIN semester c ".
// 											  "ON b.semester = c.kode ".
// 											  "WHERE c.semester_tipe = '$this->jenis_semester' ".
// 											  " AND b.tahun_akademik = '$this->tahun_akademik' AND b.kode_prodi != '$prodi'");
// 				$i             = 0;
// 				foreach ($rs_Waktutersedia->result() as $data) {
// 					$this->itersedia[$i]         = intval($data->kode_guru);
// 					$this->itersediaa[$i]         = $data->kode_guru;
// 					$this->waktu_tersedia[$i][0] = intval($data->kode_guru);
// 					$this->waktu_tersedia[$i][1] = $data->kode_hari_ruang;
// 					$i++;
// 				}  												
// 		}
		
        
     
        
    }
    
    
    public function Inisialisai($jumlah_populasi)
    {
        $this->populasi       = $jumlah_populasi;
        $jumlah_pengampu = count($this->pengampu);        
        $jumlah_jam = count($this->jam);
        $jumlah_hari = count($this->hari);
        $jumlah_ruang_reguler = count($this->ruangReguler);
        $jumlah_ruang_lab = count($this->ruangLaboratorium);
        
        for ($i = 0; $i < $this->populasi; $i++) {
            
            for ($j = 0; $j < $jumlah_pengampu; $j++) {
                
                $sks = $this->sks[$j];

                
                $this->individu[$i][$j][0] = $j;
                
                // Penentuan jam secara acak ketika 1 sks 
                if ($sks == 1) {
                    $this->individu[$i][$j][1] = mt_rand(0,  $jumlah_jam - 1);
                }
                
                // Penentuan jam secara acak ketika 2 sks 
                if ($sks == 2) {
                    $this->individu[$i][$j][1] = mt_rand(0, ($jumlah_jam - 1) - 1);
                }
                
                // Penentuan jam secara acak ketika 3 sks
                if ($sks == 3) {
                    $this->individu[$i][$j][1] = mt_rand(0, ($jumlah_jam - 1) - 2);
                }
                
                // Penentuan jam secara acak ketika 4 jam
                if ($sks == 4) {
                    $this->individu[$i][$j][1] = mt_rand(0, ($jumlah_jam - 1) - 3);
                }
                
                $this->individu[$i][$j][2] = mt_rand(0, $jumlah_hari - 1); // Penentuan hari secara acak 
				
                
				
					if ($this->jenis_mk[$j] === $this->TEORI) {
						if($this->ruang_pilihan[$j] == true){
							$this->individu[$i][$j][3] = intval($this->ruang_pilihan[$j]);				
						}
						else{
							$kuota=intval($this->kuota_pengampu[$j]);	
							$rs_RuangReguler = $this->db->query("SELECT id FROM ruangan");
							$k               = 0;
							foreach ($rs_RuangReguler->result() as $data) {
								$this->ruangReguler[$k] = intval($data->id);
								$this->kuota_ruangReguler[$k] = intval(1);
								$k++;
							}				
							$jumlah_ruang_reguler = count($this->ruangReguler);
							$this->individu[$i][$j][3] = intval($this->ruangReguler[mt_rand(0, $jumlah_ruang_reguler - 1)]);
						}
					} else if ($this->jenis_mk[$j] === $this->PRAKTIKUM) {
						$this->individu[$i][$j][3] = intval($this->ruangLaboratorium[mt_rand(0, $jumlah_ruang_lab - 1)]);                    
					}
					else{}
				
				
                
				
            }
        }
    }
    
    private function CekFitness($indv,$prodi)
    {
        $this->kode_jumat     = intval(5);
        $this->range_jumat    = explode('-','6-7');//$hari_jam = explode(':', $this->waktu_guru[$j][1]);
        $this->kode_dhuhur    = intval(6);
		$penalty = 0;
        $jumlah_ruang_reguler = count($this->ruangReguler);
        $hari_jumat = intval($this->kode_jumat);
        $jumat_0 = intval($this->range_jumat[0]);
        $jumat_1 = intval($this->range_jumat[1]);
        
        
        //var_dump($this->range_jumat);
        //exit();
        
        $jumlah_pengampu = count($this->pengampu);
        
        for ($i = 0; $i < $jumlah_pengampu; $i++)
        {
          
          $sks = intval($this->sks[$i]);
          
          $jam_a = intval($this->individu[$indv][$i][1]);
          $hari_a = intval($this->individu[$indv][$i][2]);
          
          $guru_a = intval($this->guru[$i]);        
          $kuota = intval($this->kuota_pengampu[$i]);        
          $ruang_pilihan = intval($this->ruang_pilihan[$i]);        
          $semester_a = intval($this->semester[$i]);        
          $kelas_a = intval($this->kelas[$i]);        
		  $prodi_a = intval($this->prodi[$i]);        
		  if($ruang_pilihan==true){
			$ruang_a = $ruang_pilihan;
		  }
		  else{
			$ruang_a = intval($this->individu[$indv][$i][3]);
		  }
          $rs_RuangReguler = $this->db->query("SELECT id FROM ruangan");
		  foreach ($rs_RuangReguler->result() as $data) ;
		  //       if($ruang_pilihan==0){
				// 	if(1 < $kuota){
				// 		$penalty += 1;
				// 	}
				//   }
		
          
            for ($j = 0; $j < $jumlah_pengampu; $j++) {                 
			
           
                $jam_b = intval($this->individu[$indv][$j][1]);
                $hari_b = intval($this->individu[$indv][$j][2]);
                $ruang_b = intval($this->individu[$indv][$j][3]);
                $guru_b = intval($this->guru[$j]);
                $semester_b = intval($this->semester[$j]);
                $kelas_b = intval($this->kelas[$j]);
                $prodi_b = intval($this->prodi[$j]);
                  
                  
                //1.bentrok ruang dan waktu dan 3.bentrok guru
                
                //ketika pemasaran matapelajaran sama, maka langsung ke perulangan berikutnya
                if ($i == $j)
                    continue;
				
                
                //#region Bentrok Ruang dan Waktu
                //Ketika jam,hari dan ruangnya sama, maka penalty + satu
				   
				
                if ($jam_a == $jam_b &&
                    $hari_a == $hari_b &&
                    $ruang_a == $ruang_b)
                {
                    $penalty += 1;
                }
				
                
                //Ketika sks  = 2, 
                //hari dan ruang sama, dan 
                //jam kedua sama dengan jam pertama matapelajaran yang lain, maka penalty + 1
                if ($sks >= 2)
                {
                    if ($jam_a + 1 == $jam_b &&
                        $hari_a == $hari_b &&
                        $ruang_a == $ruang_b)
                    {
                        $penalty += 1;
                    }
                }
                
                
                //Ketika sks  = 3, 
                //hari dan ruang sama dan 
                //jam ketiga sama dengan jam pertama matapelajaran yang lain, maka penalty + 1
                if ($sks >= 3) {
                    if ($jam_a + 2 == $jam_b &&
                        $hari_a == $hari_b &&
                        $ruang_a == $ruang_b)
                    {
                        $penalty += 1;
                    }
                }
                
                //Ketika sks  = 4, 
                //hari dan ruang sama dan 
                //jam ketiga sama dengan jam pertama matapelajaran yang lain, maka penalty + 1
                if ($sks >= 4) {
                    if ($jam_a + 1 == $jam_b &&
                        $hari_a == $hari_b &&
                        $ruang_a == $ruang_b)
                    {
                        $penalty += 1;
                    }
                }
				
				//#region Bentrok Ruang dan Waktu
                //Ketika jam,hari dan semester sama, maka penalty + satu
                if ($jam_a == $jam_b &&
                    $hari_a == $hari_b &&
                    $kelas_a == $kelas_b &&
                    $semester_a == $semester_b)
                {
                    $penalty += 1;
                }
				
				//Ketika sks  = 2, 
                //hari dan ruang sama, dan 
                //jam kedua sama dengan jam pertama matapelajaran yang lain, maka penalty + 1
                if ($sks >= 2)
                {
                    if ($jam_a + 1 == $jam_b &&
                        $hari_a == $hari_b &&
						$kelas_a == $kelas_b &&
                        $semester_a == $semester_b)
                    {
                        $penalty += 1;
                    }
                }
                
                
                //Ketika sks  = 3, 
                //hari dan ruang sama dan 
                //jam ketiga sama dengan jam pertama matapelajaran yang lain, maka penalty + 1
                if ($sks >= 3) {
                    if ($jam_a + 2 == $jam_b &&
                        $hari_a == $hari_b &&
						$kelas_a == $kelas_b &&
                        $semester_a == $semester_b)
                    {
                        $penalty += 1;
                    }
                }
                
                //Ketika sks  = 4, 
                //hari dan ruang sama dan 
                //jam ketiga sama dengan jam pertama matapelajaran yang lain, maka penalty + 1
                if ($sks >= 4) {
                    if ($jam_a + 1 == $jam_b &&
                        $hari_a == $hari_b &&
						$kelas_a == $kelas_b &&
                        $semester_a == $semester_b)
                    {
                        $penalty += 1;
                    }
                }
				
                
                //______________________BENTROK guru
                if (
                //ketika jam sama
                    $jam_a == $jam_b && 
                //dan hari sama
                    $hari_a == $hari_b && 
                //dan gurunya sama
                    $guru_a == $guru_b)
                {
                  //maka...
                  $penalty += 1;
                }
                
                
                
                if ($sks >= 2) {
                    if (
                    //ketika jam sama
                      ($jam_a + 1) == $jam_b && 
                    //dan hari sama
                      $hari_a == $hari_b && 
                    //dan gurunya sama
                      $guru_a == $guru_b)
                    {
                      //maka...
                      $penalty += 1;
                    }
                }
                
                if ($sks >= 3) {
                    if (
                    //ketika jam sama
                      ($jam_a + 2) == $jam_b && 
                    //dan hari sama
                      $hari_a == $hari_b && 
                    //dan gurunya sama
                      $guru_a == $guru_b)
                    {
                      //maka...
                      $penalty += 1;
                    }
                }
                
                if ($sks >= 4) {
                    if (
                    //ketika jam sama
                      ($jam_a + 1) == $jam_b && 
                    //dan hari sama
                      $hari_a == $hari_b && 
                    //dan gurunya sama
                      $guru_a == $guru_b)
                    {
                      //maka...
                      $penalty += 1;
                    }
                }                
            }
            
            //
            // #region Bentrok sholat Jumat
            if (($hari_a  + 1) == $hari_jumat) //2.bentrok sholat jumat
            {
                
                if ($sks == 1)
                {
                   if (
                       
                        ($jam_a == ($jumat_0 - 1)) ||
                        ($jam_a == ($jumat_1 - 1)) 
                       
                       )
                   {
                       
                       $penalty += 1;
                   }
                }
                
                
                if ($sks == 2 || $sks == 4)
                {
                    if (
                          ($jam_a == ($jumat_0 - 2)) ||
                          ($jam_a == ($jumat_0 - 1)) ||
                          ($jam_a == ($jumat_1 - 1)) 
                        )
                    {
                        /*
                        echo '$sks = ' . $sks. '<br>';
                        echo '$jam_a = ' . $jam_a. '<br>';
                        echo '($jumat_0 - 2) = ' . ($jumat_0 - 2) . '<br>';
                        echo '($jumat_0 - 1) = ' . ($jumat_0 - 1). '<br>';
                        echo '($jumat_1 - 1) = ' . ($jumat_1 - 1). '<br>';
                        echo '($jumat_2 - 1) = ' . ($jumat_2- 1). '<br>';
                        exit();
                        */
                        
                        $penalty += 1;                        
                    }
                }
                
                if ($sks == 3)
                {
                    if (
                          ($jam_a == ($jumat_0 - 3)) ||
                          ($jam_a == ($jumat_0 - 2)) ||
                          ($jam_a == ($jumat_0 - 1)) ||
                          ($jam_a == ($jumat_1 - 1)) 
                        )
                    {                        
                        $penalty += 1;                        
                    }
                }
                
                
            }
            //#endregion
            
            //#region Bentrok dengan Waktu Keinginan guru
            //Boolean penaltyForKeinginanguru = false;
            
            $jumlah_waktu_tidak_bersedia = count($this->iguru);
            
            for ($j = 0; $j < $jumlah_waktu_tidak_bersedia; $j++)
            {
                if ($guru_a == $this->iguru[$j] )
                {
                    $hari_jam = explode(':', $this->waktu_guru[$j][1]);
                    
                    if ($this->jam[$jam_a] == $hari_jam[1] &&
                        $this->hari[$hari_a] == $hari_jam[0])
                    {                    
                        $penalty += 1;                        
                    }
                }                            
				
            }
			//#endregion
            
            //#region Bentrok dengan Waktu Yang Sudah Terpakai
			if($prodi==true){
			$jumlah_waktu_tersedia = count($this->itersedia);
            
            for ($j = 0; $j < $jumlah_waktu_tersedia; $j++)
            {
                
                    $hari_ruang = explode(':', $this->waktu_tersedia[$j][1]);
					
					if ($guru_a == $this->itersedia[$j] )
                {
                    
                    
					
					
                    if (($hari_a +1)  == $hari_ruang[0] )
                    {   
						
					
                        if ($sks == 1)
						{
						   if (
							   
								($jam_a == ($hari_ruang[1] - 1)) ||
								($jam_a == (($hari_ruang[1]+1) - 1))
							   
							   )
						   {
							   
							   $penalty += 1;
						   }
						}
						
						
						if ($sks == 2 || $sks == 4)
						{
							if (
								  ($jam_a == ($hari_ruang[1] - 2)) ||
								  ($jam_a == ($hari_ruang[1] - 1)) ||
								  ($jam_a == (($hari_ruang[1]+1) - 1))||
								  ($jam_a == ($hari_ruang[1]+2))
								)
							{
								
								
								$penalty += 1;                        
							}
						}
						
						if ($sks == 3)
						{
							if (
								  ($jam_a == ($hari_ruang[1] - 3)) ||
								  ($jam_a == ($hari_ruang[1] - 2)) ||
								  ($jam_a == ($hari_ruang[1] - 1)) ||
								  ($jam_a == (($hari_ruang[1]+1) - 1))||
								  ($jam_a == ($hari_ruang[1]+1))||
								  ($jam_a == ($hari_ruang[1]+2))||
								  ($jam_a == ($hari_ruang[1]+3))
								)
							{                        
								$penalty += 1;                        
							}
						}                    
                    }
                 }
                    
					if ($this->hari[$hari_a]   == $hari_ruang[0]  && $ruang_a  == $hari_ruang[2])
                    {   
						
					
                        if ($sks == 1)
						{
						   if (
							   
								($this->jam[$jam_a] == ($hari_ruang[1] - 1)) ||
								($this->jam[$jam_a] == (($hari_ruang[1]+1) - 1))
							   
							   )
						   {
							   
							   $penalty += 1;
						   }
						}
						
						
						if ($sks == 2 || $sks == 4)
						{
							if (
								  ($this->jam[$jam_a] == ($hari_ruang[1] - 2)) ||
								  ($this->jam[$jam_a] == ($hari_ruang[1] - 1)) ||
								  ($this->jam[$jam_a] == (($hari_ruang[1]+1) - 1))||
								  ($this->jam[$jam_a] == ($hari_ruang[1]+1))||
								  ($this->jam[$jam_a] == ($hari_ruang[1]+2))
								)
							{
								
								
								$penalty += 1;                        
							}
						}
						
						if ($sks == 3)
						{
							if (
								  $this->jam[$jam_a] == $hari_ruang[1]||
								  ($this->jam[$jam_a] == ($hari_ruang[1] - 3)) ||
								  ($this->jam[$jam_a] == ($hari_ruang[1] - 2)) ||
								  ($this->jam[$jam_a] == ($hari_ruang[1] - 1)) ||
								  ($this->jam[$jam_a] == ($hari_ruang[1]+1))||
								  ($this->jam[$jam_a] == ($hari_ruang[1]+2))||
								  ($this->jam[$jam_a] == ($hari_ruang[1]+3))
								)
							{                        
								$penalty += 1;                        
							}
						}                    
                    }
				
					
                    
                 
				 
				 
            }
			}
			//#endregion
			
			
			//#region Bentrok dengan Waktu Dhuhur
			
            /*           
            if ($sks == 1)
                {
                   if (
                       
                        ($jam_a == ($this->kode_dhuhur - 1)) ||
                        ($jam_a == ($this->kode_dhuhur - 1)) 
                       
                       )
                   {
                       
                       $penalty += 1;
                   }
                }
                
                
                if ($sks == 2 || $sks == 4)
                {
                    if (
                          ($jam_a == ($this->kode_dhuhur - 2)) ||
                          ($jam_a == ($this->kode_dhuhur - 1)) ||
                          ($jam_a == ($this->kode_dhuhur - 1)) 
                        )
                    {
                        
                        
                        $penalty += 1;                        
                    }
                }
                
                if ($sks == 3)
                {
                    if (
                          ($jam_a == ($this->kode_dhuhur - 3)) ||
                          ($jam_a == ($this->kode_dhuhur - 2)) ||
                          ($jam_a == ($this->kode_dhuhur - 1)) ||
                          ($jam_a == ($this->kode_dhuhur - 1)) 
                        )
                    {                        
                        $penalty += 1;                        
                    }
                }
			*/
            //endregion waktu dhuhur
            
            
            
        }      
        
        $fitness = floatval(1 / (1 + $penalty));  
        
        return $fitness;        
    }
    
    public function HitungFitness($jumlah_populasi,$prodi)
    {
	
		$this->populasi       = $jumlah_populasi;
        //hard constraint
        //1.bentrok ruang dan waktu
        //2.bentrok sholat jumat
        //3.bentrok guru
        //4.bentrok keinginan waktu guru 
        //5.bentrok waktu dhuhur 
        //=>6.praktikum harus pada ruang lab {telah ditetapkan dari awal perandoman
        //    bahwa jika praktikum harus ada pada LAB dan mata kuliah reguler harus 
        //    pada kelas reguler
        
        
        //soft constraint //TODO
        //$fitness = array();
        
        for ($indv = 0; $indv < $this->populasi; $indv++)
        {            
            $fitness[$indv] = $this->CekFitness($indv,$prodi);            
        }
        
        return $fitness;
    }
    
    #endregion
    
    #region Seleksi
    public function Seleksi($fitness,$jumlah_populasi)
    {
		$this->populasi       = $jumlah_populasi;
        $jumlah = 0;
        $rank   = array();
        
        
        for ($i = 0; $i < $this->populasi; $i++)
        {
          //proses ranking berdasarkan nilai fitness
            $rank[$i] = 1;
            for ($j = 0; $j < $this->populasi; $j++)
            {
              //ketika nilai fitness jadwal sekarang lebih dari nilai fitness jadwal yang lain,
              //ranking + 1;
              //if (i == j) continue;
                
                $fitnessA = floatval($fitness[$i]);
                $fitnessB = floatval($fitness[$j]);
                
                if ( $fitnessA > $fitnessB)
                {
                    $rank[$i] += 1;                    
                }
            }
            
            $jumlah += $rank[$i];
        }
        
        $jumlah_rank = count($rank);
        for ($i = 0; $i < $this->populasi; $i++)
        {
            //proses seleksi berdasarkan ranking yang telah dibuat
            //int nexRandom = random.Next(1, jumlah);
            //random = new Random(nexRandom);
            $target = mt_rand(0, $jumlah - 1);           
          
            $cek    = 0;
            for ($j = 0; $j < $jumlah_rank; $j++) {
                $cek += $rank[$j];
                if (intval($cek) >= intval($target)) {
                    $this->induk[$i] = $j;
                    break;
                }
            }
        }
    }
    //#endregion
    
    public function StartCrossOver($jumlah_populasi,$crossOver)
    {
		$this->populasi       = $jumlah_populasi;
        $this->crossOver      = $crossOver;
        $individu_baru = array(array(array()));
        $jumlah_pengampu = count($this->pengampu);;
        
        for ($i = 0; $i < $this->populasi; $i+=2) //perulangan untuk jadwal yang terpilih
        {
            $b = 0;
            
            $cr = mt_rand(0, mt_getrandmax() - 1) / mt_getrandmax();
            
            //Two point crossover
            if (floatval($cr) < floatval($this->crossOver)) {
                //ketika nilai random kurang dari nilai probabilitas pertukaran
                //maka jadwal mengalami prtukaran
                
                $a = mt_rand(0, $jumlah_pengampu - 2);
                while ($b <= $a) {
                    $b = mt_rand(0, $jumlah_pengampu - 1);
                }
                
                
                //var_dump($this->induk);
                
                
                //penentuan jadwal baru dari awal sampai titik pertama
                for ($j = 0; $j < $a; $j++) {
                    for ($k = 0; $k < 4; $k++) {                        
                        $individu_baru[$i][$j][$k]     = $this->individu[$this->induk[$i]][$j][$k];
                        $individu_baru[$i + 1][$j][$k] = $this->individu[$this->induk[$i + 1]][$j][$k];
                    }
                }
                
                //Penentuan jadwal baru dai titik pertama sampai titik kedua
                for ($j = $a; $j < $b; $j++) {
                    for ($k = 0; $k < 4; $k++) {
                        $individu_baru[$i][$j][$k]     = $this->individu[$this->induk[$i + 1]][$j][$k];
                        $individu_baru[$i + 1][$j][$k] = $this->individu[$this->induk[$i]][$j][$k];
                    }
                }
                
                //penentuan jadwal baru dari titik kedua sampai akhir
                for ($j = $b; $j < $jumlah_pengampu; $j++) {
                    for ($k = 0; $k < 4; $k++) {
                        $individu_baru[$i][$j][$k]     = $this->individu[$this->induk[$i]][$j][$k];
                        $individu_baru[$i + 1][$j][$k] = $this->individu[$this->induk[$i + 1]][$j][$k];
                    }
                }
            } else { //Ketika nilai random lebih dari nilai probabilitas pertukaran, maka jadwal baru sama dengan jadwal terpilih
                for ($j = 0; $j < $jumlah_pengampu; $j++) {
                    for ($k = 0; $k < 4; $k++) {
                        $individu_baru[$i][$j][$k]     = $this->individu[$this->induk[$i]][$j][$k];
                        $individu_baru[$i + 1][$j][$k] = $this->individu[$this->induk[$i + 1]][$j][$k];
                    }
                }
            }
        }
        
        $jumlah_pengampu = count($this->pengampu);
        
        for ($i = 0; $i < $this->populasi; $i += 2) {
          for ($j = 0; $j < $jumlah_pengampu ; $j++) {
            for ($k = 0; $k < 4; $k++) {
                $this->individu[$i][$j][$k] = $individu_baru[$i][$j][$k];
                $this->individu[$i + 1][$j][$k] = $individu_baru[$i + 1][$j][$k];
            }
          }
        }

        return $individu_baru;
    }
    
    public function Mutasi($jumlah_populasi,$mutasi,$prodi)
    {
        $this->populasi       = $jumlah_populasi;
        $this->mutasi         = $mutasi;
		
		$fitness = array();
        //proses perandoman atau penggantian komponen untuk tiap jadwal baru
        $r       = mt_rand(0, mt_getrandmax() - 1) / mt_getrandmax();
        $jumlah_pengampu = count($this->pengampu);
        $jumlah_jam = count($this->jam);
        $jumlah_hari = count($this->hari);
        $jumlah_ruang_reguler = count($this->ruangReguler);
        $jumlah_ruang_lab = count($this->ruangLaboratorium);
        
        for ($i = 0; $i < $this->populasi; $i++) {
            //Ketika nilai random kurang dari nilai probalitas Mutasi, 
            //maka terjadi penggantian komponen
            
            if ($r < $this->mutasi) {
                //Penentuan pada matapelajaran dan kelas yang mana yang akan dirandomkan atau diganti 
                $krom = mt_rand(0, $jumlah_pengampu - 1);
                
                $j = intval($this->sks[$krom]);
                
                switch ($j) {
                    case 1:
                        $this->individu[$i][$krom][1] = mt_rand(0, $jumlah_jam - 1);
                        break;
                    case 2:
                        $this->individu[$i][$krom][1] = mt_rand(0, ($jumlah_jam - 1) - 1);
                        break;
                    case 3:
                        $this->individu[$i][$krom][1] = mt_rand(0, ($jumlah_jam - 1) - 2);
                        break;
                    case 4:
                        $this->individu[$i][$krom][1] = mt_rand(0, ($jumlah_jam - 1) - 3);
                        break;
                }
                //Proses penggantian hari
                $this->individu[$i][$krom][2] = mt_rand(0, $jumlah_hari - 1);
                
                //proses penggantian ruang               
                
                if ($this->jenis_mk[$krom] === $this->TEORI) {
                    $this->individu[$i][$krom][3] = $this->ruangReguler[mt_rand(0, $jumlah_ruang_reguler - 1)];
                } else {
                    $this->individu[$i][$krom][3] = $this->ruangLaboratorium[mt_rand(0, $jumlah_ruang_lab - 1)];
                }
                
                
            }
            
            $fitness[$i] = $this->CekFitness($i,$prodi);
        }
        return $fitness;
    }
    
    
    public function GetIndividu($indv)
    {
        //return individu;
        
        //int[,] individu_solusi = new int[mata_kuliah.Length, 4];
        $individu_solusi = array(array());
        
        for ($j = 0; $j < count($this->pengampu); $j++)
        {
            $individu_solusi[$j][0] = intval($this->pengampu[$this->individu[$indv][$j][0]]);
            $individu_solusi[$j][1] = intval($this->jam[$this->individu[$indv][$j][1]]);
            $individu_solusi[$j][2] = intval($this->hari[$this->individu[$indv][$j][2]]);                        
            $individu_solusi[$j][3] = intval($this->individu[$indv][$j][3]);            
        }
        
        return $individu_solusi;
    }

}

/* End of file Proposal.php */
/* Location: ./application/controllers/admin/Proposal.php */