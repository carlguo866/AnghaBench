; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_sha512-internal.c_sha512_vector.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_sha512-internal.c_sha512_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha512_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sha512_vector(i64 %0, i32** %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sha512_state, align 4
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32** %1, i32*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = call i32 @sha512_init(%struct.sha512_state* %10)
  store i64 0, i64* %11, align 8
  br label %13

13:                                               ; preds = %30, %4
  %14 = load i64, i64* %11, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load i32**, i32*** %7, align 8
  %19 = load i64, i64* %11, align 8
  %20 = getelementptr inbounds i32*, i32** %18, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = load i64, i64* %11, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @sha512_process(%struct.sha512_state* %10, i32* %21, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  store i32 -1, i32* %5, align 4
  br label %39

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %11, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %11, align 8
  br label %13

33:                                               ; preds = %13
  %34 = load i32*, i32** %9, align 8
  %35 = call i64 @sha512_done(%struct.sha512_state* %10, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 -1, i32* %5, align 4
  br label %39

38:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %37, %28
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @sha512_init(%struct.sha512_state*) #1

declare dso_local i64 @sha512_process(%struct.sha512_state*, i32*, i64) #1

declare dso_local i64 @sha512_done(%struct.sha512_state*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
