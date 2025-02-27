; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_memory-util.h_memmem_safe.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_memory-util.h_memmem_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i8*, i64)* @memmem_safe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @memmem_safe(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ule i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %5, align 8
  br label %29

14:                                               ; preds = %4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i8* null, i8** %5, align 8
  br label %29

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @assert(i8* %20)
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @assert(i8* %22)
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i8* @memmem(i8* %24, i64 %25, i8* %26, i64 %27)
  store i8* %28, i8** %5, align 8
  br label %29

29:                                               ; preds = %19, %18, %12
  %30 = load i8*, i8** %5, align 8
  ret i8* %30
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i8* @memmem(i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
