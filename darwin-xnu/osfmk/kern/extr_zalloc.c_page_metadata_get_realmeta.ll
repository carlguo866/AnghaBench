; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_page_metadata_get_realmeta.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_page_metadata_get_realmeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone_page_metadata = type { i64 }

@MULTIPAGE_METADATA_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zone_page_metadata* (%struct.zone_page_metadata*)* @page_metadata_get_realmeta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zone_page_metadata* @page_metadata_get_realmeta(%struct.zone_page_metadata* %0) #0 {
  %2 = alloca %struct.zone_page_metadata*, align 8
  store %struct.zone_page_metadata* %0, %struct.zone_page_metadata** %2, align 8
  %3 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %2, align 8
  %4 = call i64 @PAGE_METADATA_GET_ZINDEX(%struct.zone_page_metadata* %3)
  %5 = load i64, i64* @MULTIPAGE_METADATA_MAGIC, align 8
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %2, align 8
  %10 = ptrtoint %struct.zone_page_metadata* %9 to i64
  %11 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %2, align 8
  %12 = getelementptr inbounds %struct.zone_page_metadata, %struct.zone_page_metadata* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %10, %13
  %15 = inttoptr i64 %14 to %struct.zone_page_metadata*
  ret %struct.zone_page_metadata* %15
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @PAGE_METADATA_GET_ZINDEX(%struct.zone_page_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
