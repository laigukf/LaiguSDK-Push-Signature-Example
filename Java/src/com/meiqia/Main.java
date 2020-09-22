package com.laigu;

import java.security.SignatureException;

public class Main {

    public static void main(String[] args) {
        LaiguSigner signer =  new LaiguSigner("$2a$12$skg8Mk3UJ3ylnmciryxCQ.IyjKTqi2ujRYwH0ak/BMXYiFBacZbx6");
        try {
            System.out.println(signer.sign("来鼓，在线客服软件的漂亮之选"));
        } catch (SignatureException e) {
            e.printStackTrace();
        }
    }
}
