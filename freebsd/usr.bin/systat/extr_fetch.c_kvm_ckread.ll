; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_fetch.c_kvm_ckread.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_fetch.c_kvm_ckread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kd = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"error reading kmem at %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_ckread(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* @kd, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = ptrtoint i8* %9 to i32
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @kvm_read(i32 %8, i32 %10, i8* %11, i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i64, i64* @verbose, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %19, %16
  store i32 0, i32* %4, align 4
  br label %24

23:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %24

24:                                               ; preds = %23, %22
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @kvm_read(i32, i32, i8*, i32) #1

declare dso_local i32 @error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
