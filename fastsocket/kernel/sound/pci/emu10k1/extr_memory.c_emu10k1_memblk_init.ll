; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_memory.c_emu10k1_memblk_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_memory.c_emu10k1_memblk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1_memblk = type { i32, i8*, i8*, i8*, %struct.TYPE_2__, i64, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu10k1_memblk*)* @emu10k1_memblk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emu10k1_memblk_init(%struct.snd_emu10k1_memblk* %0) #0 {
  %2 = alloca %struct.snd_emu10k1_memblk*, align 8
  store %struct.snd_emu10k1_memblk* %0, %struct.snd_emu10k1_memblk** %2, align 8
  %3 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %2, align 8
  %4 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %3, i32 0, i32 0
  store i32 -1, i32* %4, align 8
  %5 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %2, align 8
  %6 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %5, i32 0, i32 7
  %7 = call i32 @INIT_LIST_HEAD(i32* %6)
  %8 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %2, align 8
  %9 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %8, i32 0, i32 6
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %2, align 8
  %12 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %11, i32 0, i32 5
  store i64 0, i64* %12, align 8
  %13 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %2, align 8
  %14 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i8* @get_aligned_page(i64 %16)
  %18 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %2, align 8
  %19 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %2, align 8
  %21 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %2, align 8
  %25 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %23, %27
  %29 = sub nsw i64 %28, 1
  %30 = call i8* @get_aligned_page(i64 %29)
  %31 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %2, align 8
  %32 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %2, align 8
  %34 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %2, align 8
  %37 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = ptrtoint i8* %35 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = add nsw i64 %41, 1
  %43 = inttoptr i64 %42 to i8*
  %44 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %2, align 8
  %45 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @get_aligned_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
