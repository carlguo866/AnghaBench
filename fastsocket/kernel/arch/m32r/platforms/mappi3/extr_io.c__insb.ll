; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/platforms/mappi3/extr_io.c__insb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/platforms/mappi3/extr_io.c__insb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LAN_IOSTART = common dso_local global i32 0, align 4
@LAN_IOEND = common dso_local global i32 0, align 4
@M32R_PCC_IOEND0 = common dso_local global i32 0, align 4
@M32R_PCC_IOSTART0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_insb(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @LAN_IOSTART, align 4
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @LAN_IOEND, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @PORT2ADDR_NE(i32 %17)
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @_ne_insb(i32 %18, i8* %19, i64 %20)
  br label %36

22:                                               ; preds = %12, %3
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %7, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i8* @PORT2ADDR(i32 %24)
  store i8* %25, i8** %8, align 8
  br label %26

26:                                               ; preds = %30, %22
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %27, -1
  store i64 %28, i64* %6, align 8
  %29 = icmp ne i64 %27, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i8*, i8** %8, align 8
  %32 = load volatile i8, i8* %31, align 1
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %7, align 8
  store i8 %32, i8* %33, align 1
  br label %26

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %16
  ret void
}

declare dso_local i32 @_ne_insb(i32, i8*, i64) #1

declare dso_local i32 @PORT2ADDR_NE(i32) #1

declare dso_local i8* @PORT2ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
