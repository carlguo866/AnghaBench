; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_readq.c_snd_seq_oss_readq_puts.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_readq.c_snd_seq_oss_readq_puts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_readq = type { i32 }
%union.evrec = type { i32* }

@SEQ_MIDIPUTC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_oss_readq_puts(%struct.seq_oss_readq* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.seq_oss_readq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.evrec, align 8
  %11 = alloca i32, align 4
  store %struct.seq_oss_readq* %0, %struct.seq_oss_readq** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = call i32 @memset(%union.evrec* %10, i32 0, i32 8)
  %13 = load i32, i32* @SEQ_MIDIPUTC, align 4
  %14 = bitcast %union.evrec* %10 to i32**
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  %18 = bitcast %union.evrec* %10 to i32**
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  store i32 %17, i32* %20, align 4
  br label %21

21:                                               ; preds = %39, %4
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %9, align 4
  %24 = icmp sgt i32 %22, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %8, align 8
  %28 = load i8, i8* %26, align 1
  %29 = zext i8 %28 to i32
  %30 = bitcast %union.evrec* %10 to i32**
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 %29, i32* %32, align 4
  %33 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %6, align 8
  %34 = call i32 @snd_seq_oss_readq_put_event(%struct.seq_oss_readq* %33, %union.evrec* %10)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %5, align 4
  br label %41

39:                                               ; preds = %25
  br label %21

40:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @memset(%union.evrec*, i32, i32) #1

declare dso_local i32 @snd_seq_oss_readq_put_event(%struct.seq_oss_readq*, %union.evrec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
