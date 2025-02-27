; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_frame_sci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_frame_sci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macsec_eth_header = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MACSEC_PORT_ES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macsec_eth_header*, i32)* @macsec_frame_sci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macsec_frame_sci(%struct.macsec_eth_header* %0, i32 %1) #0 {
  %3 = alloca %struct.macsec_eth_header*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.macsec_eth_header* %0, %struct.macsec_eth_header** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %3, align 8
  %10 = getelementptr inbounds %struct.macsec_eth_header, %struct.macsec_eth_header* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @memcpy(i32* %5, i32 %11, i32 4)
  br label %20

13:                                               ; preds = %2
  %14 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %3, align 8
  %15 = getelementptr inbounds %struct.macsec_eth_header, %struct.macsec_eth_header* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MACSEC_PORT_ES, align 4
  %19 = call i32 @make_sci(i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %13, %8
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @make_sci(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
