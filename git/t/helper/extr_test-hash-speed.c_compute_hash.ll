; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-hash-speed.c_compute_hash.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-hash-speed.c_compute_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_hash_algo = type { i32 (i32*, i32*)*, i32 (i32*, i8*, i64)*, i32 (i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.git_hash_algo*, i32*, i32*, i8*, i64)* @compute_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_hash(%struct.git_hash_algo* %0, i32* %1, i32* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.git_hash_algo*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.git_hash_algo* %0, %struct.git_hash_algo** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.git_hash_algo*, %struct.git_hash_algo** %6, align 8
  %12 = getelementptr inbounds %struct.git_hash_algo, %struct.git_hash_algo* %11, i32 0, i32 2
  %13 = load i32 (i32*)*, i32 (i32*)** %12, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 %13(i32* %14)
  %16 = load %struct.git_hash_algo*, %struct.git_hash_algo** %6, align 8
  %17 = getelementptr inbounds %struct.git_hash_algo, %struct.git_hash_algo* %16, i32 0, i32 1
  %18 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %17, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i32 %18(i32* %19, i8* %20, i64 %21)
  %23 = load %struct.git_hash_algo*, %struct.git_hash_algo** %6, align 8
  %24 = getelementptr inbounds %struct.git_hash_algo, %struct.git_hash_algo* %23, i32 0, i32 0
  %25 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %24, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 %25(i32* %26, i32* %27)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
