; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_unwind.c_swap_eh_frame_hdr_table_entries.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_unwind.c_swap_eh_frame_hdr_table_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eh_frame_hdr_table_entry = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @swap_eh_frame_hdr_table_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap_eh_frame_hdr_table_entries(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.eh_frame_hdr_table_entry*, align 8
  %8 = alloca %struct.eh_frame_hdr_table_entry*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.eh_frame_hdr_table_entry*
  store %struct.eh_frame_hdr_table_entry* %11, %struct.eh_frame_hdr_table_entry** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.eh_frame_hdr_table_entry*
  store %struct.eh_frame_hdr_table_entry* %13, %struct.eh_frame_hdr_table_entry** %8, align 8
  %14 = load %struct.eh_frame_hdr_table_entry*, %struct.eh_frame_hdr_table_entry** %7, align 8
  %15 = getelementptr inbounds %struct.eh_frame_hdr_table_entry, %struct.eh_frame_hdr_table_entry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load %struct.eh_frame_hdr_table_entry*, %struct.eh_frame_hdr_table_entry** %8, align 8
  %18 = getelementptr inbounds %struct.eh_frame_hdr_table_entry, %struct.eh_frame_hdr_table_entry* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.eh_frame_hdr_table_entry*, %struct.eh_frame_hdr_table_entry** %7, align 8
  %21 = getelementptr inbounds %struct.eh_frame_hdr_table_entry, %struct.eh_frame_hdr_table_entry* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.eh_frame_hdr_table_entry*, %struct.eh_frame_hdr_table_entry** %8, align 8
  %24 = getelementptr inbounds %struct.eh_frame_hdr_table_entry, %struct.eh_frame_hdr_table_entry* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.eh_frame_hdr_table_entry*, %struct.eh_frame_hdr_table_entry** %7, align 8
  %26 = getelementptr inbounds %struct.eh_frame_hdr_table_entry, %struct.eh_frame_hdr_table_entry* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %9, align 8
  %28 = load %struct.eh_frame_hdr_table_entry*, %struct.eh_frame_hdr_table_entry** %8, align 8
  %29 = getelementptr inbounds %struct.eh_frame_hdr_table_entry, %struct.eh_frame_hdr_table_entry* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.eh_frame_hdr_table_entry*, %struct.eh_frame_hdr_table_entry** %7, align 8
  %32 = getelementptr inbounds %struct.eh_frame_hdr_table_entry, %struct.eh_frame_hdr_table_entry* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.eh_frame_hdr_table_entry*, %struct.eh_frame_hdr_table_entry** %8, align 8
  %35 = getelementptr inbounds %struct.eh_frame_hdr_table_entry, %struct.eh_frame_hdr_table_entry* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
