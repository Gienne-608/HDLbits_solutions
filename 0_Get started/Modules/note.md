## Hierarchy in verilog

在verilog内进行实例化，形成模块的等级（hierarchy）
![image](https://user-images.githubusercontent.com/66467271/158004149-59b23424-9ce8-4f56-b82e-a9910b7be1dc.png)

如上图所示：
```
module mkM1 (…);
…
endmodule

module mkM2 (…);
mkM1 m1a ( … ); // instantiates mkM1
endmodule

module mkM3 (…);
mkM1 m1b ( … ); // instantiates mkM1
mkM2 m2 ( … ); // instantiates mkM2
endmodule
```

module内部可以按照position 或者定义的顺序同意引用port和wire
