; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tricore/gnu/extr_tricore-dis.c_decode_rcrr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tricore/gnu/extr_tricore-dis.c_decode_rcrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32* }

@dec_insn = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @decode_rcrr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_rcrr() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %49, %0
  %3 = load i32, i32* %1, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dec_insn, i32 0, i32 3), align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp slt i32 %3, %6
  br i1 %7, label %8, label %52

8:                                                ; preds = %2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dec_insn, i32 0, i32 3), align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %48 [
    i32 130, label %16
    i32 128, label %24
    i32 131, label %32
    i32 129, label %40
  ]

16:                                               ; preds = %8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dec_insn, i32 0, i32 1), align 8
  %18 = and i32 %17, -268435456
  %19 = lshr i32 %18, 28
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dec_insn, i32 0, i32 0), align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 %19, i32* %23, align 4
  br label %48

24:                                               ; preds = %8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dec_insn, i32 0, i32 1), align 8
  %26 = and i32 %25, 251658240
  %27 = ashr i32 %26, 24
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dec_insn, i32 0, i32 0), align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %27, i32* %31, align 4
  br label %48

32:                                               ; preds = %8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dec_insn, i32 0, i32 1), align 8
  %34 = and i32 %33, 61440
  %35 = ashr i32 %34, 12
  %36 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dec_insn, i32 0, i32 2), align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %35, i32* %39, align 4
  br label %48

40:                                               ; preds = %8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dec_insn, i32 0, i32 1), align 8
  %42 = and i32 %41, 3840
  %43 = ashr i32 %42, 8
  %44 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dec_insn, i32 0, i32 0), align 8
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %43, i32* %47, align 4
  br label %48

48:                                               ; preds = %8, %40, %32, %24, %16
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %1, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %1, align 4
  br label %2

52:                                               ; preds = %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
