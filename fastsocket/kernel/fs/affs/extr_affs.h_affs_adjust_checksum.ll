; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_affs.h_affs_adjust_checksum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_affs.h_affs_adjust_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_head*, i64)* @affs_adjust_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @affs_adjust_checksum(%struct.buffer_head* %0, i64 %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %7 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i32*
  %10 = getelementptr inbounds i32, i32* %9, i64 5
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @be32_to_cpu(i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = sub nsw i64 %13, %14
  %16 = call i32 @cpu_to_be32(i64 %15)
  %17 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %18 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = getelementptr inbounds i32, i32* %20, i64 5
  store i32 %16, i32* %21, align 4
  ret void
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
