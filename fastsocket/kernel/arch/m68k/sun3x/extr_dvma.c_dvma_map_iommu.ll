; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/sun3x/extr_dvma.c_dvma_map_iommu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/sun3x/extr_dvma.c_dvma_map_iommu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DVMA_PAGE_MASK = common dso_local global i32 0, align 4
@DVMA_PAGE_SHIFT = common dso_local global i64 0, align 8
@DVMA_PAGE_SIZE = common dso_local global i64 0, align 8
@IOMMU_FULL_BLOCK = common dso_local global i32 0, align 4
@iommu_pte = common dso_local global i32* null, align 8

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
