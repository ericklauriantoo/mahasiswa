<?php
    use App\Models\mahasiswa;
    use App\Models\vjlhkrsmhs;
    use App\Models\view_only_03081200002;
?>

@extends('layouts.app')
@section('title','Quiz BAP - Erick Laurianto - 0308120002')
@section('content')
    <div class="card">
        <div class="card-body">
            <br>
        <h5><b>NAMA</b>       : Erick Laurianto</h5>
        <h5><b>STUDENT ID</b> : 03081200002</h5>
        <h5><b>TERM</b>       : 1212</h5>
        <h5><b>TOTAL SKS</b>  : 24</h5>
        <br>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">Kode Mata Kuliah</th>
                <th scope="col">Nama Mata Kuliah</th>
                <th scope="col">SKS</th>
            </tr>
            </thead>
            <tbody>
                <?php
                    $rows = view_only_03081200002::get();
                    foreach ($rows as $row) {
                        echo "<tr>";
                        echo "<th scope='row'>".$row->kode_matakuliah."</td>";
                        echo "<td>".$row->nama_matakuliah."</td>";
                        echo "<td>".$row->sks."</td>";
                        echo "</tr>";
                    }
                ?>
            </tbody>
        </table>
        </div>
    </div>
@endsection
