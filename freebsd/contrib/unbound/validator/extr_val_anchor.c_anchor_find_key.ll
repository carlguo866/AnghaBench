; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchor_find_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchor_find_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ta_key = type { i64, i64, i32, %struct.ta_key* }
%struct.trust_anchor = type { %struct.ta_key* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ta_key* (%struct.trust_anchor*, i32*, i64, i64)* @anchor_find_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ta_key* @anchor_find_key(%struct.trust_anchor* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ta_key*, align 8
  %6 = alloca %struct.trust_anchor*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ta_key*, align 8
  store %struct.trust_anchor* %0, %struct.trust_anchor** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %12 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %11, i32 0, i32 0
  %13 = load %struct.ta_key*, %struct.ta_key** %12, align 8
  store %struct.ta_key* %13, %struct.ta_key** %10, align 8
  br label %14

14:                                               ; preds = %40, %4
  %15 = load %struct.ta_key*, %struct.ta_key** %10, align 8
  %16 = icmp ne %struct.ta_key* %15, null
  br i1 %16, label %17, label %44

17:                                               ; preds = %14
  %18 = load %struct.ta_key*, %struct.ta_key** %10, align 8
  %19 = getelementptr inbounds %struct.ta_key, %struct.ta_key* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load %struct.ta_key*, %struct.ta_key** %10, align 8
  %25 = getelementptr inbounds %struct.ta_key, %struct.ta_key* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load %struct.ta_key*, %struct.ta_key** %10, align 8
  %31 = getelementptr inbounds %struct.ta_key, %struct.ta_key* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @memcmp(i32 %32, i32* %33, i64 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load %struct.ta_key*, %struct.ta_key** %10, align 8
  store %struct.ta_key* %38, %struct.ta_key** %5, align 8
  br label %45

39:                                               ; preds = %29, %23, %17
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.ta_key*, %struct.ta_key** %10, align 8
  %42 = getelementptr inbounds %struct.ta_key, %struct.ta_key* %41, i32 0, i32 3
  %43 = load %struct.ta_key*, %struct.ta_key** %42, align 8
  store %struct.ta_key* %43, %struct.ta_key** %10, align 8
  br label %14

44:                                               ; preds = %14
  store %struct.ta_key* null, %struct.ta_key** %5, align 8
  br label %45

45:                                               ; preds = %44, %37
  %46 = load %struct.ta_key*, %struct.ta_key** %5, align 8
  ret %struct.ta_key* %46
}

declare dso_local i64 @memcmp(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
