; ModuleID = '/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_ldump.c_luaU_dump.c'
source_filename = "/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_ldump.c_luaU_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i8*, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaU_dump(i32* %0, %struct.TYPE_8__* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 4
  store i32* %12, i32** %13, align 8
  %14 = load i32, i32* %8, align 4
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  store i32 %14, i32* %15, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* %10, align 4
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = call i32 @DumpHeader(%struct.TYPE_9__* %11)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @DumpByte(i32 %24, %struct.TYPE_9__* %11)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = call i32 @DumpFunction(%struct.TYPE_8__* %26, i32* null, %struct.TYPE_9__* %11)
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  ret i32 %29
}

declare dso_local i32 @DumpHeader(%struct.TYPE_9__*) #1

declare dso_local i32 @DumpByte(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @DumpFunction(%struct.TYPE_8__*, i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
