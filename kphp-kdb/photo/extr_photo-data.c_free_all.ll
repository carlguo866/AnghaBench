; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_free_all.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbosity = common dso_local global i64 0, align 8
@write_only = common dso_local global i32 0, align 4
@index_mode = common dso_local global i32 0, align 4
@user_cnt = common dso_local global i32 0, align 4
@users = common dso_local global i32* null, align 8
@volumes = common dso_local global i32 0, align 4
@h_users = common dso_local global i32 0, align 4
@header = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Memory left: %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = load i64, i64* @verbosity, align 8
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %5, label %51

5:                                                ; preds = %0
  br label %6

6:                                                ; preds = %9, %5
  %7 = call i32 (...) @user_LRU_unload()
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  br label %6

10:                                               ; preds = %6
  %11 = load i32, i32* @write_only, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @index_mode, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %13
  store i32 1, i32* %1, align 4
  br label %17

17:                                               ; preds = %28, %16
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @user_cnt, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i32*, i32** @users, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32* %25, i32** %2, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @user_unloaded_free(i32* %26)
  br label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %17

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31, %13, %10
  %33 = load i32*, i32** @users, align 8
  %34 = load i32, i32* @user_cnt, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 4, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32 @dl_free(i32* %33, i32 %37)
  %39 = call i32 @map_int_int_free(i32* @volumes)
  %40 = call i32 @set_intp_free(i32* @h_users)
  %41 = call i32 @free_header(i32* @header)
  %42 = call i32 (...) @free_types()
  %43 = call i32 (...) @utils_free()
  %44 = load i32, i32* @stderr, align 4
  %45 = call i64 (...) @dl_get_memory_used()
  %46 = call i32 @fprintf(i32 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %45)
  %47 = call i64 (...) @dl_get_memory_used()
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  br label %51

51:                                               ; preds = %32, %0
  ret void
}

declare dso_local i32 @user_LRU_unload(...) #1

declare dso_local i32 @user_unloaded_free(i32*) #1

declare dso_local i32 @dl_free(i32*, i32) #1

declare dso_local i32 @map_int_int_free(i32*) #1

declare dso_local i32 @set_intp_free(i32*) #1

declare dso_local i32 @free_header(i32*) #1

declare dso_local i32 @free_types(...) #1

declare dso_local i32 @utils_free(...) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i64 @dl_get_memory_used(...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
