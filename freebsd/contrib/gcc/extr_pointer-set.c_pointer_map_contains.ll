; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_pointer-set.c_pointer_map_contains.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_pointer-set.c_pointer_map_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pointer_map_t = type { i64, i8**, i8**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @pointer_map_contains(%struct.pointer_map_t* %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.pointer_map_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.pointer_map_t* %0, %struct.pointer_map_t** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load %struct.pointer_map_t*, %struct.pointer_map_t** %4, align 8
  %9 = getelementptr inbounds %struct.pointer_map_t, %struct.pointer_map_t* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.pointer_map_t*, %struct.pointer_map_t** %4, align 8
  %12 = getelementptr inbounds %struct.pointer_map_t, %struct.pointer_map_t* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @hash1(i8* %7, i64 %10, i32 %13)
  store i64 %14, i64* %6, align 8
  br label %15

15:                                               ; preds = %2, %50
  %16 = load %struct.pointer_map_t*, %struct.pointer_map_t** %4, align 8
  %17 = getelementptr inbounds %struct.pointer_map_t, %struct.pointer_map_t* %16, i32 0, i32 1
  %18 = load i8**, i8*** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds i8*, i8** %18, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp eq i8* %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = load %struct.pointer_map_t*, %struct.pointer_map_t** %4, align 8
  %26 = getelementptr inbounds %struct.pointer_map_t, %struct.pointer_map_t* %25, i32 0, i32 2
  %27 = load i8**, i8*** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28
  store i8** %29, i8*** %3, align 8
  br label %51

30:                                               ; preds = %15
  %31 = load %struct.pointer_map_t*, %struct.pointer_map_t** %4, align 8
  %32 = getelementptr inbounds %struct.pointer_map_t, %struct.pointer_map_t* %31, i32 0, i32 1
  %33 = load i8**, i8*** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i8** null, i8*** %3, align 8
  br label %51

39:                                               ; preds = %30
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.pointer_map_t*, %struct.pointer_map_t** %4, align 8
  %44 = getelementptr inbounds %struct.pointer_map_t, %struct.pointer_map_t* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i64 0, i64* %6, align 8
  br label %48

48:                                               ; preds = %47, %39
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49
  br label %15

51:                                               ; preds = %38, %24
  %52 = load i8**, i8*** %3, align 8
  ret i8** %52
}

declare dso_local i64 @hash1(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
