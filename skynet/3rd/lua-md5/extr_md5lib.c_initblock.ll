; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua-md5/extr_md5lib.c_initblock.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua-md5/extr_md5lib.c_initblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXKEY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"key too long (> %d)\00", align 1
@BLOCKSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8*)* @initblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initblock(i32* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i8* @luaL_checklstring(i32* %11, i32 2, i64* %9)
  store i8* %12, i8** %10, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @MAXKEY, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32*, i32** %5, align 8
  %18 = load i64, i64* @MAXKEY, align 8
  %19 = call i32 @luaL_error(i32* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %20

20:                                               ; preds = %16, %4
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* @BLOCKSIZE, align 4
  %23 = call i32 @memset(i8* %21, i32 0, i32 %22)
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = call i32 @memcpy(i8* %24, i8* %25, i64 %27)
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* @BLOCKSIZE, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8*, i8** %10, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @memcpy(i8* %32, i8* %33, i64 %34)
  %36 = load i64, i64* %9, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @BLOCKSIZE, align 4
  %39 = add nsw i32 %37, %38
  ret i32 %39
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_error(i32*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
