; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_atkbd.c_atkbd_oqo_01plus_scancode_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_atkbd.c_atkbd_oqo_01plus_scancode_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atkbd = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atkbd*, i32)* @atkbd_oqo_01plus_scancode_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbd_oqo_01plus_scancode_fixup(%struct.atkbd* %0, i32 %1) #0 {
  %3 = alloca %struct.atkbd*, align 8
  %4 = alloca i32, align 4
  store %struct.atkbd* %0, %struct.atkbd** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.atkbd*, %struct.atkbd** %3, align 8
  %6 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %2
  %10 = load %struct.atkbd*, %struct.atkbd** %3, align 8
  %11 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 100
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 101
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 102
  br i1 %22, label %23, label %28

23:                                               ; preds = %20, %17, %14
  %24 = load %struct.atkbd*, %struct.atkbd** %3, align 8
  %25 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, 128
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %23, %20, %9, %2
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
