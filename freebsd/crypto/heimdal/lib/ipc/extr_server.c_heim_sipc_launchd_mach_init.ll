; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ipc/extr_server.c_heim_sipc_launchd_mach_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ipc/extr_server.c_heim_sipc_launchd_mach_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MACH_PORT_NULL = common dso_local global i64 0, align 8
@MACH_PORT_RIGHT_RECEIVE = common dso_local global i32 0, align 4
@mach_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heim_sipc_launchd_mach_init(i8* %0, i32 %1, i8* %2, %struct.TYPE_6__** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__**, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_6__** %3, %struct.TYPE_6__*** %8, align 8
  %9 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  %10 = load i32, i32* @EINVAL, align 4
  ret i32 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
