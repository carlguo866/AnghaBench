; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dst.c___metadata_dst_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dst.c___metadata_dst_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metadata_dst = type { i32, %struct.dst_entry }
%struct.dst_entry = type { i32, i32 }

@md_dst_ops = common dso_local global i32 0, align 4
@DST_OBSOLETE_NONE = common dso_local global i32 0, align 4
@DST_METADATA = common dso_local global i32 0, align 4
@DST_NOCOUNT = common dso_local global i32 0, align 4
@dst_md_discard = common dso_local global i32 0, align 4
@dst_md_discard_out = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.metadata_dst*, i32, i64)* @__metadata_dst_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__metadata_dst_init(%struct.metadata_dst* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.metadata_dst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.dst_entry*, align 8
  store %struct.metadata_dst* %0, %struct.metadata_dst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.metadata_dst*, %struct.metadata_dst** %4, align 8
  %9 = getelementptr inbounds %struct.metadata_dst, %struct.metadata_dst* %8, i32 0, i32 1
  store %struct.dst_entry* %9, %struct.dst_entry** %7, align 8
  %10 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %11 = load i32, i32* @DST_OBSOLETE_NONE, align 4
  %12 = load i32, i32* @DST_METADATA, align 4
  %13 = load i32, i32* @DST_NOCOUNT, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @dst_init(%struct.dst_entry* %10, i32* @md_dst_ops, i32* null, i32 1, i32 %11, i32 %14)
  %16 = load i32, i32* @dst_md_discard, align 4
  %17 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %18 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @dst_md_discard_out, align 4
  %20 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %21 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %23 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %22, i64 1
  %24 = load i64, i64* %6, align 8
  %25 = add i64 12, %24
  %26 = sub i64 %25, 8
  %27 = call i32 @memset(%struct.dst_entry* %23, i32 0, i64 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.metadata_dst*, %struct.metadata_dst** %4, align 8
  %30 = getelementptr inbounds %struct.metadata_dst, %struct.metadata_dst* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  ret void
}

declare dso_local i32 @dst_init(%struct.dst_entry*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.dst_entry*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
