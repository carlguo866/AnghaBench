; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx-pcm.c_emu_k2_recval.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx-pcm.c_emu_k2_recval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@emu10k2_adcspeed = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @emu_k2_recval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_k2_recval(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 8
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4
  %9 = load i32*, i32** @emu10k2_adcspeed, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %8, %13
  br label %15

15:                                               ; preds = %7, %4
  %16 = phi i1 [ false, %4 ], [ %14, %7 ]
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %4

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
