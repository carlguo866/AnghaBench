; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibumad/extr_sysfs.c_sys_read_uint64.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibumad/extr_sysfs.c_sys_read_uint64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_read_uint64(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [32 x i8], align 16
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %13 = call i32 @sys_read_string(i8* %10, i8* %11, i8* %12, i32 32)
  store i32 %13, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %21

17:                                               ; preds = %3
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %19 = call i32 @strtoull(i8* %18, i32* null, i32 0)
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %17, %15
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i32 @sys_read_string(i8*, i8*, i8*, i32) #1

declare dso_local i32 @strtoull(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
