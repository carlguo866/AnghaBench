; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_used_types_insert_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_used_types_insert_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.function = type { i32* }

@htab_hash_pointer = common dso_local global i32 0, align 4
@htab_eq_pointer = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.function*)* @used_types_insert_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @used_types_insert_helper(i32* %0, %struct.function* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.function*, align 8
  %5 = alloca i8**, align 8
  store i32* %0, i32** %3, align 8
  store %struct.function* %1, %struct.function** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %37

8:                                                ; preds = %2
  %9 = load %struct.function*, %struct.function** %4, align 8
  %10 = icmp ne %struct.function* %9, null
  br i1 %10, label %11, label %37

11:                                               ; preds = %8
  %12 = load %struct.function*, %struct.function** %4, align 8
  %13 = getelementptr inbounds %struct.function, %struct.function* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load i32, i32* @htab_hash_pointer, align 4
  %18 = load i32, i32* @htab_eq_pointer, align 4
  %19 = call i32* @htab_create_ggc(i32 37, i32 %17, i32 %18, i32* null)
  %20 = load %struct.function*, %struct.function** %4, align 8
  %21 = getelementptr inbounds %struct.function, %struct.function* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  br label %22

22:                                               ; preds = %16, %11
  %23 = load %struct.function*, %struct.function** %4, align 8
  %24 = getelementptr inbounds %struct.function, %struct.function* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @INSERT, align 4
  %28 = call i8** @htab_find_slot(i32* %25, i32* %26, i32 %27)
  store i8** %28, i8*** %5, align 8
  %29 = load i8**, i8*** %5, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load i32*, i32** %3, align 8
  %34 = bitcast i32* %33 to i8*
  %35 = load i8**, i8*** %5, align 8
  store i8* %34, i8** %35, align 8
  br label %36

36:                                               ; preds = %32, %22
  br label %37

37:                                               ; preds = %36, %8, %2
  ret void
}

declare dso_local i32* @htab_create_ggc(i32, i32, i32, i32*) #1

declare dso_local i8** @htab_find_slot(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
