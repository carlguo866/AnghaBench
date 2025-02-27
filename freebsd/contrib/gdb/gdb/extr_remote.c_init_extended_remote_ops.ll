; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_init_extended_remote_ops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_init_extended_remote_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i32, i32, i32 }

@extended_remote_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@remote_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [16 x i8] c"extended-remote\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Extended remote serial target in gdb-specific protocol\00", align 1
@.str.2 = private unnamed_addr constant [135 x i8] c"Use a remote computer via a serial line, using a gdb-specific protocol.\0ASpecify the serial device it is connected to (e.g. /dev/ttya).\00", align 1
@extended_remote_open = common dso_local global i32 0, align 4
@extended_remote_create_inferior = common dso_local global i32 0, align 4
@extended_remote_mourn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_extended_remote_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_extended_remote_ops() #0 {
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_3__* @extended_remote_ops to i8*), i8* align 8 bitcast (%struct.TYPE_3__* @remote_ops to i8*), i64 40, i1 false)
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @extended_remote_ops, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @extended_remote_ops, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @extended_remote_ops, i32 0, i32 2), align 8
  %1 = load i32, i32* @extended_remote_open, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @extended_remote_ops, i32 0, i32 5), align 8
  %2 = load i32, i32* @extended_remote_create_inferior, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @extended_remote_ops, i32 0, i32 4), align 4
  %3 = load i32, i32* @extended_remote_mourn, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @extended_remote_ops, i32 0, i32 3), align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
