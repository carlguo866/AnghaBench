; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_bench_sign.c_bench_sign_setup.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_bench_sign.c_bench_sign_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bench_sign_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bench_sign_setup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %6, %struct.TYPE_2__** %4, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %19, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 32
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = add nsw i32 %11, 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32 %12, i32* %18, align 4
  br label %19

19:                                               ; preds = %10
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %7

22:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %35, %22
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 32
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 65
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %28, i32* %34, align 4
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %23

38:                                               ; preds = %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
