; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_cust.c_custom_ext_parse_old_cb_wrap.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_cust.c_custom_ext_parse_old_cb_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, i32, i8*, i64, i32*, i32)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*, i64, i32*, i64, i32*, i8*)* @custom_ext_parse_old_cb_wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @custom_ext_parse_old_cb_wrap(i32* %0, i32 %1, i32 %2, i8* %3, i64 %4, i32* %5, i64 %6, i32* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32* %5, i32** %16, align 8
  store i64 %6, i64* %17, align 8
  store i32* %7, i32** %18, align 8
  store i8* %8, i8** %19, align 8
  %21 = load i8*, i8** %19, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %20, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (i32*, i32, i8*, i64, i32*, i32)*, i32 (i32*, i32, i8*, i64, i32*, i32)** %24, align 8
  %26 = icmp eq i32 (i32*, i32, i8*, i64, i32*, i32)* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %9
  store i32 1, i32* %10, align 4
  br label %41

28:                                               ; preds = %9
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (i32*, i32, i8*, i64, i32*, i32)*, i32 (i32*, i32, i8*, i64, i32*, i32)** %30, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load i8*, i8** %14, align 8
  %35 = load i64, i64* %15, align 8
  %36 = load i32*, i32** %18, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 %31(i32* %32, i32 %33, i8* %34, i64 %35, i32* %36, i32 %39)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %28, %27
  %42 = load i32, i32* %10, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
