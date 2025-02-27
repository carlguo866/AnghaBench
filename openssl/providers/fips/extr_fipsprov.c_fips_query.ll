; ModuleID = '/home/carl/AnghaBench/openssl/providers/fips/extr_fipsprov.c_fips_query.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/fips/extr_fipsprov.c_fips_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fips_digests = common dso_local global i32* null, align 8
@fips_ciphers = common dso_local global i32* null, align 8
@fips_macs = common dso_local global i32* null, align 8
@fips_kdfs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32*)* @fips_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fips_query(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %18 [
    i32 130, label %10
    i32 131, label %12
    i32 128, label %14
    i32 129, label %16
  ]

10:                                               ; preds = %3
  %11 = load i32*, i32** @fips_digests, align 8
  store i32* %11, i32** %4, align 8
  br label %19

12:                                               ; preds = %3
  %13 = load i32*, i32** @fips_ciphers, align 8
  store i32* %13, i32** %4, align 8
  br label %19

14:                                               ; preds = %3
  %15 = load i32*, i32** @fips_macs, align 8
  store i32* %15, i32** %4, align 8
  br label %19

16:                                               ; preds = %3
  %17 = load i32*, i32** @fips_kdfs, align 8
  store i32* %17, i32** %4, align 8
  br label %19

18:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %19

19:                                               ; preds = %18, %16, %14, %12, %10
  %20 = load i32*, i32** %4, align 8
  ret i32* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
