; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_fs.c_uv_fs_rename.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_fs.c_uv_fs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV_FS_RENAME = common dso_local global i32 0, align 4
@POST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_fs_rename(i32* %0, i32* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32, i32* @UV_FS_RENAME, align 4
  %14 = call i32 @INIT(i32 %13)
  %15 = load i32*, i32** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @fs__capture_path(i32* %15, i8* %16, i8* %17, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @uv_translate_sys_error(i32 %25)
  store i32 %26, i32* %6, align 4
  br label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @POST, align 4
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i32 @INIT(i32) #1

declare dso_local i32 @fs__capture_path(i32*, i8*, i8*, i32) #1

declare dso_local i32 @uv_translate_sys_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
