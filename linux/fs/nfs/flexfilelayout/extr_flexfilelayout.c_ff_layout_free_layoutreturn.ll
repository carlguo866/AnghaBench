; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_free_layoutreturn.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_free_layoutreturn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_xdr_opaque_data = type { %struct.nfs4_flexfile_layoutreturn_args* }
%struct.nfs4_flexfile_layoutreturn_args = type { i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_xdr_opaque_data*)* @ff_layout_free_layoutreturn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ff_layout_free_layoutreturn(%struct.nfs4_xdr_opaque_data* %0) #0 {
  %2 = alloca %struct.nfs4_xdr_opaque_data*, align 8
  %3 = alloca %struct.nfs4_flexfile_layoutreturn_args*, align 8
  store %struct.nfs4_xdr_opaque_data* %0, %struct.nfs4_xdr_opaque_data** %2, align 8
  %4 = load %struct.nfs4_xdr_opaque_data*, %struct.nfs4_xdr_opaque_data** %2, align 8
  %5 = getelementptr inbounds %struct.nfs4_xdr_opaque_data, %struct.nfs4_xdr_opaque_data* %4, i32 0, i32 0
  %6 = load %struct.nfs4_flexfile_layoutreturn_args*, %struct.nfs4_flexfile_layoutreturn_args** %5, align 8
  %7 = icmp ne %struct.nfs4_flexfile_layoutreturn_args* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %33

9:                                                ; preds = %1
  %10 = load %struct.nfs4_xdr_opaque_data*, %struct.nfs4_xdr_opaque_data** %2, align 8
  %11 = getelementptr inbounds %struct.nfs4_xdr_opaque_data, %struct.nfs4_xdr_opaque_data* %10, i32 0, i32 0
  %12 = load %struct.nfs4_flexfile_layoutreturn_args*, %struct.nfs4_flexfile_layoutreturn_args** %11, align 8
  store %struct.nfs4_flexfile_layoutreturn_args* %12, %struct.nfs4_flexfile_layoutreturn_args** %3, align 8
  %13 = load %struct.nfs4_xdr_opaque_data*, %struct.nfs4_xdr_opaque_data** %2, align 8
  %14 = getelementptr inbounds %struct.nfs4_xdr_opaque_data, %struct.nfs4_xdr_opaque_data* %13, i32 0, i32 0
  store %struct.nfs4_flexfile_layoutreturn_args* null, %struct.nfs4_flexfile_layoutreturn_args** %14, align 8
  %15 = load %struct.nfs4_flexfile_layoutreturn_args*, %struct.nfs4_flexfile_layoutreturn_args** %3, align 8
  %16 = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, %struct.nfs4_flexfile_layoutreturn_args* %15, i32 0, i32 3
  %17 = call i32 @ff_layout_free_ds_ioerr(i32* %16)
  %18 = load %struct.nfs4_flexfile_layoutreturn_args*, %struct.nfs4_flexfile_layoutreturn_args** %3, align 8
  %19 = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, %struct.nfs4_flexfile_layoutreturn_args* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nfs4_flexfile_layoutreturn_args*, %struct.nfs4_flexfile_layoutreturn_args** %3, align 8
  %22 = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, %struct.nfs4_flexfile_layoutreturn_args* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ff_layout_free_iostats_array(i32 %20, i32 %23)
  %25 = load %struct.nfs4_flexfile_layoutreturn_args*, %struct.nfs4_flexfile_layoutreturn_args** %3, align 8
  %26 = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, %struct.nfs4_flexfile_layoutreturn_args* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @put_page(i32 %29)
  %31 = load %struct.nfs4_flexfile_layoutreturn_args*, %struct.nfs4_flexfile_layoutreturn_args** %3, align 8
  %32 = call i32 @kfree(%struct.nfs4_flexfile_layoutreturn_args* %31)
  br label %33

33:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @ff_layout_free_ds_ioerr(i32*) #1

declare dso_local i32 @ff_layout_free_iostats_array(i32, i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @kfree(%struct.nfs4_flexfile_layoutreturn_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
