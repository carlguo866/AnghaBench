; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_namespaces.c_ns_dname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_namespaces.c_ns_dname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.proc_ns_operations = type { i32 }
%struct.TYPE_2__ = type { %struct.proc_ns_operations* }

@.str = private unnamed_addr constant [9 x i8] c"%s:[%lu]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, i8*, i32)* @ns_dname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ns_dname(%struct.dentry* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.proc_ns_operations*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %7, align 8
  %13 = call %struct.TYPE_2__* @PROC_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %14, align 8
  store %struct.proc_ns_operations* %15, %struct.proc_ns_operations** %8, align 8
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %8, align 8
  %20 = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @dynamic_dname(%struct.dentry* %16, i8* %17, i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  ret i8* %25
}

declare dso_local %struct.TYPE_2__* @PROC_I(%struct.inode*) #1

declare dso_local i8* @dynamic_dname(%struct.dentry*, i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
