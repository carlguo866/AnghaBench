; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_node_ipv4_address_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_node_ipv4_address_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2nm_node = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%pI4\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.o2nm_node*, i8*)* @o2nm_node_ipv4_address_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2nm_node_ipv4_address_read(%struct.o2nm_node* %0, i8* %1) #0 {
  %3 = alloca %struct.o2nm_node*, align 8
  %4 = alloca i8*, align 8
  store %struct.o2nm_node* %0, %struct.o2nm_node** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.o2nm_node*, %struct.o2nm_node** %3, align 8
  %7 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %6, i32 0, i32 0
  %8 = call i32 @sprintf(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %7)
  ret i32 %8
}

declare dso_local i32 @sprintf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
