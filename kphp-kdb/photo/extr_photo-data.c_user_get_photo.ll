; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_user_get_photo.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_user_get_photo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"no album found (pid->aid)\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"no album data found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_get_photo(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @user_loaded(i32* %12)
  %14 = call i32 @assert(i32 %13)
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @user_get_aid_by_pid(i32* %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = call i32 @dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %36

22:                                               ; preds = %4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32* @user_get_photo_data(i32* %23, i32 %24)
  store i32* %25, i32** %11, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 @dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %36

30:                                               ; preds = %22
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @user_get_obj(i32* %31, i32 %32, i32 %33, i32* %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %30, %28, %20
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @user_loaded(i32*) #1

declare dso_local i32 @user_get_aid_by_pid(i32*, i32) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32* @user_get_photo_data(i32*, i32) #1

declare dso_local i32 @user_get_obj(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
