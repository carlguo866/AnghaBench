; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_guess_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_guess_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mtu_plateau = common dso_local global i16* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i16)* @guess_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @guess_mtu(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %27, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i16*, i16** @mtu_plateau, align 8
  %8 = call i32 @ARRAY_SIZE(i16* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %5
  %11 = load i16, i16* %3, align 2
  %12 = zext i16 %11 to i32
  %13 = load i16*, i16** @mtu_plateau, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i16, i16* %13, i64 %15
  %17 = load i16, i16* %16, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp sgt i32 %12, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %10
  %21 = load i16*, i16** @mtu_plateau, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %21, i64 %23
  %25 = load i16, i16* %24, align 2
  store i16 %25, i16* %2, align 2
  br label %31

26:                                               ; preds = %10
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %5

30:                                               ; preds = %5
  store i16 68, i16* %2, align 2
  br label %31

31:                                               ; preds = %30, %20
  %32 = load i16, i16* %2, align 2
  ret i16 %32
}

declare dso_local i32 @ARRAY_SIZE(i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
