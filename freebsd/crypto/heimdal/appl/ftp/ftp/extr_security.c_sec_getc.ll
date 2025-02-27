; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_security.c_sec_getc.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_security.c_sec_getc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sec_complete = common dso_local global i64 0, align 8
@data_prot = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sec_getc(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8, align 1
  store i32* %0, i32** %3, align 8
  %5 = load i64, i64* @sec_complete, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load i64, i64* @data_prot, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @fileno(i32* %11)
  %13 = call i64 @sec_read(i32 %12, i8* %4, i32 1)
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @EOF, align 4
  store i32 %16, i32* %2, align 4
  br label %23

17:                                               ; preds = %10
  %18 = load i8, i8* %4, align 1
  %19 = sext i8 %18 to i32
  store i32 %19, i32* %2, align 4
  br label %23

20:                                               ; preds = %7, %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @getc(i32* %21)
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %20, %17, %15
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @sec_read(i32, i8*, i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @getc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
