; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_xtensa.c_xtensa_tlb_op.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_xtensa.c_xtensa_tlb_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@R_ANAL_OP_TYPE_MOV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, i32, i32*)* @xtensa_tlb_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xtensa_tlb_op(i32* %0, %struct.TYPE_4__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 2
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 4
  %13 = and i32 %12, 15
  switch i32 %13, label %18 [
    i32 3, label %14
    i32 4, label %14
    i32 5, label %14
    i32 6, label %14
    i32 7, label %14
    i32 11, label %14
    i32 12, label %14
    i32 13, label %14
    i32 14, label %14
    i32 15, label %14
  ]

14:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %15 = load i32, i32* @R_ANAL_OP_TYPE_MOV, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %24

18:                                               ; preds = %4
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @xtensa_unk_op(i32* %19, %struct.TYPE_4__* %20, i32 %21, i32* %22)
  br label %24

24:                                               ; preds = %18, %14
  ret void
}

declare dso_local i32 @xtensa_unk_op(i32*, %struct.TYPE_4__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
