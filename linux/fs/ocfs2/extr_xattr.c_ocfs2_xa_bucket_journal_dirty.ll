; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_bucket_journal_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_bucket_journal_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xa_loc = type { %struct.ocfs2_xattr_bucket* }
%struct.ocfs2_xattr_bucket = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ocfs2_xa_loc*)* @ocfs2_xa_bucket_journal_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_xa_bucket_journal_dirty(i32* %0, %struct.ocfs2_xa_loc* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ocfs2_xa_loc*, align 8
  %5 = alloca %struct.ocfs2_xattr_bucket*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.ocfs2_xa_loc* %1, %struct.ocfs2_xa_loc** %4, align 8
  %6 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %7 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %6, i32 0, i32 0
  %8 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %7, align 8
  store %struct.ocfs2_xattr_bucket* %8, %struct.ocfs2_xattr_bucket** %5, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %5, align 8
  %11 = call i32 @ocfs2_xattr_bucket_journal_dirty(i32* %9, %struct.ocfs2_xattr_bucket* %10)
  ret void
}

declare dso_local i32 @ocfs2_xattr_bucket_journal_dirty(i32*, %struct.ocfs2_xattr_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
