; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_partition_tbl.c_handle_partition_fs_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_partition_tbl.c_handle_partition_fs_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partition_entry = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"%s IS MISSING from hrPartitionTable\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"%s [FS index = %d] IS in hrPartitionTable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_partition_fs_index(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.partition_entry*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = call %struct.partition_entry* @partition_entry_find_by_label(i8* %6)
  store %struct.partition_entry* %7, %struct.partition_entry** %5, align 8
  %8 = icmp eq %struct.partition_entry* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 (i8*, i8*, ...) @HRDBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %10)
  br label %19

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 (i8*, i8*, ...) @HRDBG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %13, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.partition_entry*, %struct.partition_entry** %5, align 8
  %18 = getelementptr inbounds %struct.partition_entry, %struct.partition_entry* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %12, %9
  ret void
}

declare dso_local %struct.partition_entry* @partition_entry_find_by_label(i8*) #1

declare dso_local i32 @HRDBG(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
