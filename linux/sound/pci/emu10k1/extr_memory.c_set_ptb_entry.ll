; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_memory.c_set_ptb_entry.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_memory.c_set_ptb_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@UNIT_PAGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"mapped page %d to entry %.8x\0A\00", align 1
@EMUPAGESIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu10k1*, i32, i32)* @set_ptb_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_ptb_entry(%struct.snd_emu10k1* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @UNIT_PAGES, align 4
  %9 = load i32, i32* %5, align 4
  %10 = mul nsw i32 %9, %8
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %36, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @UNIT_PAGES, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %11
  %16 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @__set_ptb_entry(%struct.snd_emu10k1* %16, i32 %17, i32 %18)
  %20 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %21 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @__get_ptb_entry(%struct.snd_emu10k1* %26, i32 %27)
  %29 = trunc i64 %28 to i32
  %30 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %29)
  %31 = load i64, i64* @EMUPAGESIZE, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %15
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %11

41:                                               ; preds = %11
  ret void
}

declare dso_local i32 @__set_ptb_entry(%struct.snd_emu10k1*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i64 @__get_ptb_entry(%struct.snd_emu10k1*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
