; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_serial.c_meth_close.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_serial.c_meth_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"serial{any}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @meth_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meth_close(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @auxiliar_checkgroup(i32* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1)
  %6 = sext i32 %5 to i64
  %7 = inttoptr i64 %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %3, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @socket_destroy(i32* %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @lua_pushnumber(i32* %11, i32 1)
  ret i32 1
}

declare dso_local i32 @auxiliar_checkgroup(i32*, i8*, i32) #1

declare dso_local i32 @socket_destroy(i32*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
