; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_vnode.c_afs_vnode_get_volume_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_vnode.c_afs_vnode_get_volume_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { %struct.TYPE_6__, %struct.TYPE_9__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.key = type { i32 }
%struct.afs_volume_status = type { i32 }
%struct.afs_server = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"%s{%x:%u.%u},%x,\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"USING SERVER: %08x\0A\00", align 1
@afs_sync_call = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_vnode_get_volume_status(%struct.afs_vnode* %0, %struct.key* %1, %struct.afs_volume_status* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.afs_vnode*, align 8
  %6 = alloca %struct.key*, align 8
  %7 = alloca %struct.afs_volume_status*, align 8
  %8 = alloca %struct.afs_server*, align 8
  %9 = alloca i32, align 4
  store %struct.afs_vnode* %0, %struct.afs_vnode** %5, align 8
  store %struct.key* %1, %struct.key** %6, align 8
  store %struct.afs_volume_status* %2, %struct.afs_volume_status** %7, align 8
  %10 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %11 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %10, i32 0, i32 1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %19 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %23 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %27 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.key*, %struct.key** %6, align 8
  %31 = call i32 @key_serial(%struct.key* %30)
  %32 = call i32 @_enter(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21, i32 %25, i32 %29, i32 %31)
  br label %33

33:                                               ; preds = %52, %3
  %34 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %35 = call %struct.afs_server* @afs_volume_pick_fileserver(%struct.afs_vnode* %34)
  store %struct.afs_server* %35, %struct.afs_server** %8, align 8
  %36 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %37 = call i64 @IS_ERR(%struct.afs_server* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %69

40:                                               ; preds = %33
  %41 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %42 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ntohl(i32 %44)
  %46 = call i32 @_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %48 = load %struct.key*, %struct.key** %6, align 8
  %49 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %50 = load %struct.afs_volume_status*, %struct.afs_volume_status** %7, align 8
  %51 = call i32 @afs_fs_get_volume_status(%struct.afs_server* %47, %struct.key* %48, %struct.afs_vnode* %49, %struct.afs_volume_status* %50, i32* @afs_sync_call)
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %40
  %53 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %54 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @afs_volume_release_fileserver(%struct.afs_vnode* %53, %struct.afs_server* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %33, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %64 = call i32 @afs_put_server(%struct.afs_server* %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %4, align 4
  br label %72

69:                                               ; preds = %39
  %70 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %71 = call i32 @PTR_ERR(%struct.afs_server* %70)
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %69, %65
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @_enter(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local %struct.afs_server* @afs_volume_pick_fileserver(%struct.afs_vnode*) #1

declare dso_local i64 @IS_ERR(%struct.afs_server*) #1

declare dso_local i32 @_debug(i8*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @afs_fs_get_volume_status(%struct.afs_server*, %struct.key*, %struct.afs_vnode*, %struct.afs_volume_status*, i32*) #1

declare dso_local i32 @afs_volume_release_fileserver(%struct.afs_vnode*, %struct.afs_server*, i32) #1

declare dso_local i32 @afs_put_server(%struct.afs_server*) #1

declare dso_local i32 @_leave(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.afs_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
