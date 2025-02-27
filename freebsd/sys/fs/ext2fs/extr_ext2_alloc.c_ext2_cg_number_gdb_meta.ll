; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_alloc.c_ext2_cg_number_gdb_meta.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_alloc.c_ext2_cg_number_gdb_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_ext2fs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m_ext2fs*, i32)* @ext2_cg_number_gdb_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_cg_number_gdb_meta(%struct.m_ext2fs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.m_ext2fs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.m_ext2fs* %0, %struct.m_ext2fs** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %11 = call i32 @EXT2_DESCS_PER_BLOCK(%struct.m_ext2fs* %10)
  %12 = sdiv i32 %9, %11
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %16 = call i32 @EXT2_DESCS_PER_BLOCK(%struct.m_ext2fs* %15)
  %17 = sext i32 %16 to i64
  %18 = mul i64 %14, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %22 = call i32 @EXT2_DESCS_PER_BLOCK(%struct.m_ext2fs* %21)
  %23 = add nsw i32 %20, %22
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %28, %2
  store i32 1, i32* %3, align 4
  br label %39

38:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @EXT2_DESCS_PER_BLOCK(%struct.m_ext2fs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
