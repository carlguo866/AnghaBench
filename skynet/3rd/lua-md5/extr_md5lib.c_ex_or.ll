; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua-md5/extr_md5lib.c_ex_or.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua-md5/extr_md5lib.c_ex_or.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"lengths must be equal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ex_or to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ex_or(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i8* @luaL_checklstring(i32* %8, i32 1, i64* %3)
  store i8* %9, i8** %5, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i8* @luaL_checklstring(i32* %10, i32 2, i64* %4)
  store i8* %11, i8** %6, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @luaL_argcheck(i32* %12, i32 %16, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @luaL_buffinit(i32* %18, i32* %7)
  br label %20

20:                                               ; preds = %24, %1
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %3, align 8
  %23 = icmp ne i64 %21, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %5, align 8
  %27 = load i8, i8* %25, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %6, align 8
  %31 = load i8, i8* %29, align 1
  %32 = sext i8 %31 to i32
  %33 = xor i32 %28, %32
  %34 = call i32 @luaL_addchar(i32* %7, i32 %33)
  br label %20

35:                                               ; preds = %20
  %36 = call i32 @luaL_pushresult(i32* %7)
  ret i32 1
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @luaL_addchar(i32*, i32) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
