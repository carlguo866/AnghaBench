; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/te/extr_te.c_r_bin_te_get_entrypoint.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/te/extr_te.c_r_bin_te_get_entrypoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.r_bin_te_obj_t = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"malloc (entrypoint)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @r_bin_te_get_entrypoint(%struct.r_bin_te_obj_t* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.r_bin_te_obj_t*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.r_bin_te_obj_t* %0, %struct.r_bin_te_obj_t** %3, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  %5 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %6 = icmp ne %struct.r_bin_te_obj_t* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %9 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %50

13:                                               ; preds = %7
  %14 = call %struct.TYPE_6__* @malloc(i32 16)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %4, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %50

18:                                               ; preds = %13
  %19 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %20 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %25 = call i64 @r_bin_te_get_stripped_delta(%struct.r_bin_te_obj_t* %24)
  %26 = sub nsw i64 %23, %25
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %18
  %34 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %35 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %33, %18
  %42 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @r_bin_te_vaddr_to_paddr(%struct.r_bin_te_obj_t* %42, i64 %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %2, align 8
  br label %50

50:                                               ; preds = %41, %16, %12
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %51
}

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @r_bin_te_get_stripped_delta(%struct.r_bin_te_obj_t*) #1

declare dso_local i32 @r_bin_te_vaddr_to_paddr(%struct.r_bin_te_obj_t*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
