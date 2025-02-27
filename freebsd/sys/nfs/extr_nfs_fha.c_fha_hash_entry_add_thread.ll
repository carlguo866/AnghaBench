; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nfs/extr_nfs_fha.c_fha_hash_entry_add_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nfs/extr_nfs_fha.c_fha_hash_entry_add_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fha_hash_entry = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@st_alink = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fha_hash_entry*, %struct.TYPE_4__*)* @fha_hash_entry_add_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fha_hash_entry_add_thread(%struct.fha_hash_entry* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.fha_hash_entry*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.fha_hash_entry* %0, %struct.fha_hash_entry** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %5 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %3, align 8
  %6 = getelementptr inbounds %struct.fha_hash_entry, %struct.fha_hash_entry* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @mtx_assert(i32 %7, i32 %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %3, align 8
  %13 = getelementptr inbounds %struct.fha_hash_entry, %struct.fha_hash_entry* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = load i32, i32* @st_alink, align 4
  %16 = call i32 @LIST_INSERT_HEAD(i32* %13, %struct.TYPE_4__* %14, i32 %15)
  %17 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %3, align 8
  %18 = getelementptr inbounds %struct.fha_hash_entry, %struct.fha_hash_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  ret void
}

declare dso_local i32 @mtx_assert(i32, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
