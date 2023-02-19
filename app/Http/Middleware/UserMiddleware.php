<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

//panggil library jwt
use Firebase\JWT\JWT; 
use Firebase\JWT\Key;
use Firebase\JWT\ExpiredException;

class UserMiddleware
{

    public function handle(Request $request, Closure $next)
    {

        try {

            $jwt = $request->bearerToken(); //ambil token 

            $decoded = JWT::decode($jwt,new Key(env('JWT_SECRET_KEY'),'HS256')); //decode token

            
            //kondisi jika roie pada token adalah admin, maka lanjut proses selanjutnya
            if($decoded->role == 'user') {
                return $next($request);
            } else {
                //jika bukan role admin
                return response()->json("Unauthorized",401);
            }

        } catch (ExpiredException $e) {
            //jika token expired
            return response()->json($e->getMessage(),400);
        }
       
    }
}
