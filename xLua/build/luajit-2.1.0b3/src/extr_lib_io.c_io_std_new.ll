; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lib_io.c_io_std_new.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lib_io.c_io_std_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32, i32 }

@UDTYPE_IO_FILE = common dso_local global i32 0, align 4
@IOFILE_TYPE_STDF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i32*, i8*)* @io_std_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @io_std_new(%struct.TYPE_9__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = call i64 @lua_newuserdata(%struct.TYPE_9__* %9, i32 16)
  %11 = inttoptr i64 %10 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %14, 1
  %16 = call %struct.TYPE_11__* @udataV(i64 %15)
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %8, align 8
  %17 = load i32, i32* @UDTYPE_IO_FILE, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %25, 3
  %27 = call i32 @gcV(i64 %26)
  %28 = call i32 @setgcref(i32 %22, i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  %32 = load i32, i32* @IOFILE_TYPE_STDF, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @lua_setfield(%struct.TYPE_9__* %35, i32 -2, i8* %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %39 = call i32* @obj2gco(%struct.TYPE_11__* %38)
  ret i32* %39
}

declare dso_local i64 @lua_newuserdata(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.TYPE_11__* @udataV(i64) #1

declare dso_local i32 @setgcref(i32, i32) #1

declare dso_local i32 @gcV(i64) #1

declare dso_local i32 @lua_setfield(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32* @obj2gco(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
