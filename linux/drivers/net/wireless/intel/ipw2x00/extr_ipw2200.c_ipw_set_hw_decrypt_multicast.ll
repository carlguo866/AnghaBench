; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_set_hw_decrypt_multicast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_set_hw_decrypt_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*, i32)* @ipw_set_hw_decrypt_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_set_hw_decrypt_multicast(%struct.ipw_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ipw_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %6 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %31

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %30 [
    i32 128, label %14
    i32 129, label %18
    i32 130, label %22
    i32 131, label %26
  ]

14:                                               ; preds = %12
  %15 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %16 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  br label %31

18:                                               ; preds = %12
  %19 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %20 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %31

22:                                               ; preds = %12
  %23 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %24 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  br label %31

26:                                               ; preds = %12
  %27 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %28 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  br label %31

30:                                               ; preds = %12
  br label %31

31:                                               ; preds = %11, %30, %26, %22, %18, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
