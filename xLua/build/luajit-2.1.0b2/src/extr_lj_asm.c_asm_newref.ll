; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm.c_asm_newref.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm.c_asm_newref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }

@lj_ir_callinfo = common dso_local global i32* null, align 8
@IRCALL_lj_tab_newkey = common dso_local global i64 0, align 8
@RID_SINK = common dso_local global i64 0, align 8
@ASMREF_L = common dso_local global i32 0, align 4
@ASMREF_TMP1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*)* @asm_newref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_newref(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [3 x i32], align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = load i32*, i32** @lj_ir_callinfo, align 8
  %8 = load i64, i64* @IRCALL_lj_tab_newkey, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  store i32* %9, i32** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RID_SINK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %41

16:                                               ; preds = %2
  %17 = load i32, i32* @ASMREF_L, align 4
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @ASMREF_TMP1, align 4
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @asm_setupresult(i32* %25, %struct.TYPE_4__* %26, i32* %27)
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %32 = call i32 @asm_gencall(i32* %29, i32* %30, i32* %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @ASMREF_TMP1, align 4
  %36 = call i32 @ra_releasetmp(i32* %34, i32 %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @asm_tvptr(i32* %33, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @asm_setupresult(i32*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @asm_gencall(i32*, i32*, i32*) #1

declare dso_local i32 @asm_tvptr(i32*, i32, i32) #1

declare dso_local i32 @ra_releasetmp(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
