; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_is_data_in_fentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_is_data_in_fentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udf_node = type { %struct.file_entry* }
%struct.file_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.udf_node*)* @is_data_in_fentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_data_in_fentry(%struct.udf_node* %0) #0 {
  %2 = alloca %struct.udf_node*, align 8
  %3 = alloca %struct.file_entry*, align 8
  store %struct.udf_node* %0, %struct.udf_node** %2, align 8
  %4 = load %struct.udf_node*, %struct.udf_node** %2, align 8
  %5 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %4, i32 0, i32 0
  %6 = load %struct.file_entry*, %struct.file_entry** %5, align 8
  store %struct.file_entry* %6, %struct.file_entry** %3, align 8
  %7 = load %struct.file_entry*, %struct.file_entry** %3, align 8
  %8 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @le16toh(i32 %10)
  %12 = and i32 %11, 7
  %13 = icmp eq i32 %12, 3
  %14 = zext i1 %13 to i32
  ret i32 %14
}

declare dso_local i32 @le16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
