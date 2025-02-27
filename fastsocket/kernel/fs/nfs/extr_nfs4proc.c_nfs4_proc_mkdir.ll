; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.iattr = type { i32 }
%struct.nfs4_exception = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.iattr*)* @nfs4_proc_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_mkdir(%struct.inode* %0, %struct.dentry* %1, %struct.iattr* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.iattr*, align 8
  %7 = alloca %struct.nfs4_exception, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.iattr* %2, %struct.iattr** %6, align 8
  %9 = bitcast %struct.nfs4_exception* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 8, i1 false)
  br label %10

10:                                               ; preds = %18, %3
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call i32 @NFS_SERVER(%struct.inode* %11)
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = load %struct.iattr*, %struct.iattr** %6, align 8
  %16 = call i32 @_nfs4_proc_mkdir(%struct.inode* %13, %struct.dentry* %14, %struct.iattr* %15)
  %17 = call i32 @nfs4_handle_exception(i32 %12, i32 %16, %struct.nfs4_exception* %7)
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %10, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  ret i32 %23
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nfs4_handle_exception(i32, i32, %struct.nfs4_exception*) #2

declare dso_local i32 @NFS_SERVER(%struct.inode*) #2

declare dso_local i32 @_nfs4_proc_mkdir(%struct.inode*, %struct.dentry*, %struct.iattr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
