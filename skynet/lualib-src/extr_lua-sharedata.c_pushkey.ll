; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_pushkey.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_pushkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i64, i32 }

@KEYTYPE_INTEGER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.node*)* @pushkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pushkey(i32* %0, i32* %1, %struct.node* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.node* %2, %struct.node** %6, align 8
  %9 = load %struct.node*, %struct.node** %6, align 8
  %10 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @KEYTYPE_INTEGER, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.node*, %struct.node** %6, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @lua_pushinteger(i32* %15, i32 %18)
  br label %30

20:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.node*, %struct.node** %6, align 8
  %23 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @lua_tolstring(i32* %21, i32 %24, i64* %7)
  store i8* %25, i8** %8, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @lua_pushlstring(i32* %26, i8* %27, i64 %28)
  br label %30

30:                                               ; preds = %20, %14
  ret void
}

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
