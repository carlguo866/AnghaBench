; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc5000.c_xc_set_xtal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc5000.c_xc_set_xtal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.xc5000_priv* }
%struct.xc5000_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @xc_set_xtal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xc_set_xtal(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.xc5000_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = load %struct.xc5000_priv*, %struct.xc5000_priv** %6, align 8
  store %struct.xc5000_priv* %7, %struct.xc5000_priv** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.xc5000_priv*, %struct.xc5000_priv** %3, align 8
  %9 = getelementptr inbounds %struct.xc5000_priv, %struct.xc5000_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %11 [
    i32 129, label %12
    i32 128, label %13
  ]

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %1, %11
  br label %23

13:                                               ; preds = %1
  %14 = load %struct.xc5000_priv*, %struct.xc5000_priv** %3, align 8
  %15 = getelementptr inbounds %struct.xc5000_priv, %struct.xc5000_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %17 [
    i32 32000, label %18
    i32 31875, label %19
  ]

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %13, %17
  br label %22

19:                                               ; preds = %13
  %20 = load %struct.xc5000_priv*, %struct.xc5000_priv** %3, align 8
  %21 = call i32 @xc_write_reg(%struct.xc5000_priv* %20, i32 15, i32 32897)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %19, %18
  br label %23

23:                                               ; preds = %22, %12
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @xc_write_reg(%struct.xc5000_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
