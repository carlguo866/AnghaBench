; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_buffer.c_sndbuf_setflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_buffer.c_sndbuf_setflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sndbuf_setflags(%struct.snd_dbuf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_dbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_dbuf* %0, %struct.snd_dbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %10 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %18 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %15, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
