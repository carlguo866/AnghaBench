; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_editPage.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_editPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32*, %struct.TYPE_14__*, i32*, i32* }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32**, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_17__*, i32*)* }

@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@CORRUPT_DB = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32, i32, i32, %struct.TYPE_16__*)* @editPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @editPage(%struct.TYPE_15__* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_16__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %11, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 6
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %12, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %13, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = mul nsw i32 %34, 2
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  store i32* %37, i32** %14, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %41, %44
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %45, %48
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %20, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp sge i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %90

60:                                               ; preds = %5
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 %63, %64
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %67 = call i32 @pageFreeArray(%struct.TYPE_15__* %61, i32 %62, i32 %65, %struct.TYPE_16__* %66)
  store i32 %67, i32* %21, align 4
  %68 = load i32, i32* %21, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %72, i32* %6, align 4
  br label %304

73:                                               ; preds = %60
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 5
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %21, align 4
  %81 = mul nsw i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %15, align 4
  %85 = mul nsw i32 %84, 2
  %86 = call i32 @memmove(i32* %76, i32* %83, i32 %85)
  %87 = load i32, i32* %21, align 4
  %88 = load i32, i32* %15, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %15, align 4
  br label %90

90:                                               ; preds = %73, %5
  %91 = load i32, i32* %20, align 4
  %92 = load i32, i32* %19, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %90
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* %20, align 4
  %99 = sub nsw i32 %97, %98
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %101 = call i32 @pageFreeArray(%struct.TYPE_15__* %95, i32 %96, i32 %99, %struct.TYPE_16__* %100)
  store i32 %101, i32* %22, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %22, align 4
  %104 = icmp sge i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = load i32, i32* %22, align 4
  %108 = load i32, i32* %15, align 4
  %109 = sub nsw i32 %108, %107
  store i32 %109, i32* %15, align 4
  br label %110

110:                                              ; preds = %94, %90
  %111 = load i32*, i32** %12, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 5
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = call i64 @get2byteNotZero(i32* %116)
  %118 = getelementptr inbounds i32, i32* %111, i64 %117
  store i32* %118, i32** %16, align 8
  %119 = load i32*, i32** %16, align 8
  %120 = load i32*, i32** %14, align 8
  %121 = icmp ult i32* %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %110
  br label %294

123:                                              ; preds = %110
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %177

127:                                              ; preds = %123
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %9, align 4
  %131 = sub nsw i32 %129, %130
  %132 = call i32 @MIN(i32 %128, i32 %131)
  store i32 %132, i32* %23, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %9, align 4
  %135 = sub nsw i32 %133, %134
  %136 = load i32, i32* %10, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %144, label %138

138:                                              ; preds = %127
  %139 = load i32, i32* %15, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %138
  %142 = load i64, i64* @CORRUPT_DB, align 8
  %143 = icmp ne i64 %142, 0
  br label %144

144:                                              ; preds = %141, %138, %127
  %145 = phi i1 [ true, %138 ], [ true, %127 ], [ %143, %141 ]
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load i32, i32* %23, align 4
  %149 = icmp sge i32 %148, 0
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 5
  %154 = load i32*, i32** %153, align 8
  store i32* %154, i32** %17, align 8
  %155 = load i32*, i32** %17, align 8
  %156 = load i32, i32* %23, align 4
  %157 = mul nsw i32 %156, 2
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  %160 = load i32*, i32** %17, align 8
  %161 = load i32, i32* %15, align 4
  %162 = mul nsw i32 %161, 2
  %163 = call i32 @memmove(i32* %159, i32* %160, i32 %162)
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %165 = load i32*, i32** %14, align 8
  %166 = load i32*, i32** %17, align 8
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %23, align 4
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %170 = call i64 @pageInsertArray(%struct.TYPE_15__* %164, i32* %165, i32** %16, i32* %166, i32 %167, i32 %168, %struct.TYPE_16__* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %144
  br label %294

173:                                              ; preds = %144
  %174 = load i32, i32* %23, align 4
  %175 = load i32, i32* %15, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %15, align 4
  br label %177

177:                                              ; preds = %173, %123
  store i32 0, i32* %18, align 4
  br label %178

178:                                              ; preds = %237, %177
  %179 = load i32, i32* %18, align 4
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = icmp slt i32 %179, %182
  br i1 %183, label %184, label %240

184:                                              ; preds = %178
  %185 = load i32, i32* %8, align 4
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 3
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %18, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %185, %192
  %194 = load i32, i32* %9, align 4
  %195 = sub nsw i32 %193, %194
  store i32 %195, i32* %24, align 4
  %196 = load i32, i32* %24, align 4
  %197 = icmp sge i32 %196, 0
  br i1 %197, label %198, label %236

198:                                              ; preds = %184
  %199 = load i32, i32* %24, align 4
  %200 = load i32, i32* %10, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %236

202:                                              ; preds = %198
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 5
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %24, align 4
  %207 = mul nsw i32 %206, 2
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %205, i64 %208
  store i32* %209, i32** %17, align 8
  %210 = load i32, i32* %15, align 4
  %211 = load i32, i32* %24, align 4
  %212 = icmp sge i32 %210, %211
  %213 = zext i1 %212 to i32
  %214 = call i32 @assert(i32 %213)
  %215 = load i32*, i32** %17, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 2
  %217 = load i32*, i32** %17, align 8
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* %24, align 4
  %220 = sub nsw i32 %218, %219
  %221 = mul nsw i32 %220, 2
  %222 = call i32 @memmove(i32* %216, i32* %217, i32 %221)
  %223 = load i32, i32* %15, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %15, align 4
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %226 = load i32*, i32** %14, align 8
  %227 = load i32*, i32** %17, align 8
  %228 = load i32, i32* %24, align 4
  %229 = load i32, i32* %9, align 4
  %230 = add nsw i32 %228, %229
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %232 = call i64 @pageInsertArray(%struct.TYPE_15__* %225, i32* %226, i32** %16, i32* %227, i32 %230, i32 1, %struct.TYPE_16__* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %202
  br label %294

235:                                              ; preds = %202
  br label %236

236:                                              ; preds = %235, %198, %184
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %18, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %18, align 4
  br label %178

240:                                              ; preds = %178
  %241 = load i32, i32* %15, align 4
  %242 = icmp sge i32 %241, 0
  %243 = zext i1 %242 to i32
  %244 = call i32 @assert(i32 %243)
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 5
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %15, align 4
  %249 = mul nsw i32 %248, 2
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  store i32* %251, i32** %17, align 8
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %253 = load i32*, i32** %14, align 8
  %254 = load i32*, i32** %17, align 8
  %255 = load i32, i32* %9, align 4
  %256 = load i32, i32* %15, align 4
  %257 = add nsw i32 %255, %256
  %258 = load i32, i32* %10, align 4
  %259 = load i32, i32* %15, align 4
  %260 = sub nsw i32 %258, %259
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %262 = call i64 @pageInsertArray(%struct.TYPE_15__* %252, i32* %253, i32** %16, i32* %254, i32 %257, i32 %260, %struct.TYPE_16__* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %240
  br label %294

265:                                              ; preds = %240
  %266 = load i32, i32* %10, align 4
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 1
  store i32 %266, i32* %268, align 4
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 2
  store i32 0, i32* %270, align 8
  %271 = load i32*, i32** %12, align 8
  %272 = load i32, i32* %13, align 4
  %273 = add nsw i32 %272, 3
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %271, i64 %274
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @put2byte(i32* %275, i32 %278)
  %280 = load i32*, i32** %12, align 8
  %281 = load i32, i32* %13, align 4
  %282 = add nsw i32 %281, 5
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %280, i64 %283
  %285 = load i32*, i32** %16, align 8
  %286 = load i32*, i32** %12, align 8
  %287 = ptrtoint i32* %285 to i64
  %288 = ptrtoint i32* %286 to i64
  %289 = sub i64 %287, %288
  %290 = sdiv exact i64 %289, 4
  %291 = trunc i64 %290 to i32
  %292 = call i32 @put2byte(i32* %284, i32 %291)
  %293 = load i32, i32* @SQLITE_OK, align 4
  store i32 %293, i32* %6, align 4
  br label %304

294:                                              ; preds = %264, %234, %172, %122
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %296 = load i32, i32* %9, align 4
  %297 = load i32, i32* %10, align 4
  %298 = call i32 @populateCellCache(%struct.TYPE_16__* %295, i32 %296, i32 %297)
  %299 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %300 = load i32, i32* %9, align 4
  %301 = load i32, i32* %10, align 4
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %303 = call i32 @rebuildPage(%struct.TYPE_16__* %299, i32 %300, i32 %301, %struct.TYPE_15__* %302)
  store i32 %303, i32* %6, align 4
  br label %304

304:                                              ; preds = %294, %265, %71
  %305 = load i32, i32* %6, align 4
  ret i32 %305
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pageFreeArray(%struct.TYPE_15__*, i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i64 @get2byteNotZero(i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @pageInsertArray(%struct.TYPE_15__*, i32*, i32**, i32*, i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @put2byte(i32*, i32) #1

declare dso_local i32 @populateCellCache(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @rebuildPage(%struct.TYPE_16__*, i32, i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
