; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_lsyscache.c_type_is_rowtype.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_lsyscache.c_type_is_rowtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RECORDOID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @type_is_rowtype(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @RECORDOID, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %21

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @get_typtype(i64 %9)
  switch i32 %10, label %19 [
    i32 129, label %11
    i32 128, label %12
  ]

11:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %21

12:                                               ; preds = %8
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @getBaseType(i64 %13)
  %15 = call i32 @get_typtype(i64 %14)
  %16 = icmp eq i32 %15, 129
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %21

18:                                               ; preds = %12
  br label %20

19:                                               ; preds = %8
  br label %20

20:                                               ; preds = %19, %18
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %17, %11, %7
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @get_typtype(i64) #1

declare dso_local i64 @getBaseType(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
