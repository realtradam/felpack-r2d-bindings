# frozen_string_literal: true

require_relative "bindings/version"
require 'ruby2d'
require 'felflame'

FelFlame::Components.new('RenderQuads')
FelFlame::Components::RenderQuads.new
FelFlame::Components.new('Quads',
                         x1: 125, y1: 0,
                         x2: 225, y2: 0,
                         x3: 250, y3: 100,
                         x4: 150, y4: 100,
                         color: [
                           [0.8, 0.3, 0.7, 0.8],
                           [0.1, 0.9, 0.1, 1.0],
                           [0.8, 0.5, 0.8, 1.0],
                           [0.6, 0.4, 0.1, 1.0]
                         ])
FelFlame::Components.new('RenderRectangles')
FelFlame::Components::RenderRectangles.new
FelFlame::Components.new('Rectangles',
                         x: 225, y: 125, width: 100, height: 100,
                         color: [
                           [0.8, 0.3, 0.7, 0.8],
                           [0.1, 0.9, 0.1, 1.0],
                           [0.8, 0.5, 0.8, 1.0],
                           [0.6, 0.4, 0.1, 1.0]
                         ]
                        )
FelFlame::Components.new('RenderSquares')
FelFlame::Components::RenderSquares.new
FelFlame::Components.new('Squares',
                         x: 125, y: 250, size: 100,
                         color: [
                           [0.8, 0.3, 0.7, 0.8],
                           [0.1, 0.9, 0.1, 1.0],
                           [0.8, 0.5, 0.8, 1.0],
                           [0.6, 0.4, 0.1, 1.0]
                         ]
                        )
FelFlame::Components.new('RenderLines')
FelFlame::Components::RenderLines.new
FelFlame::Components.new('Lines',
                         x1: 130, y1: 375, x2: 220, y2: 475, width: 5,
                         color: [
                           [0.8, 0.3, 0.7, 0.8],
                           [0.1, 0.9, 0.1, 1.0],
                           [0.8, 0.5, 0.8, 1.0],
                           [0.6, 0.4, 0.1, 1.0]
                         ])
FelFlame::Components.new('RenderTriangles')
FelFlame::Components::RenderTriangles.new
FelFlame::Components.new('Triangles',
                         x1: 450, y1: 0, x2: 500, y2: 100, x3: 400, y3: 100,
                         color: [
                           [0.8, 0.3, 0.7, 0.8],
                           [0.1, 0.9, 0.1, 1.0],
                           [0.8, 0.5, 0.8, 1.0]
                         ])
FelFlame::Components.new('RenderPixels')
FelFlame::Components::RenderPixels.new
FelFlame::Components.new('Pixels',
                         x: 525, y: 175, radius: 50, sectors: 30,
                         color: [0.8, 0.3, 0.7, 0.8]
                        )

FelFlame::Systems.new('RenderQuads', priority: 999) do
  FelFlame::Components::RenderQuads.each do |component|
    component.entities.each do |entity|
      entity.components[FelFlame::Components::Quads].each do |quad|
        Quad.draw(quad.attrs)
      end
    end
  end
end

FelFlame::Systems.new('RenderRectangles', priority: 999) do
  FelFlame::Components::RenderRectangles.each do |component|
    component.entities.each do |entity|
      entity.components[FelFlame::Components::Rectangles].each do |rectangle|
        Rectangle.draw(rectangle.attrs)
      end
    end
  end
end

FelFlame::Systems.new('RenderSquares', priority: 999) do
  FelFlame::Components::RenderSquares.each do |component|
    component.entities.each do |entity|
      entity.components[FelFlame::Components::Squares].each do |square|
        Square.draw(square.attrs)
      end
    end
  end
end

FelFlame::Systems.new('RenderLines', priority: 999) do
  FelFlame::Components::RenderLines.each do |component|
    component.entities.each do |entity|
      entity.components[FelFlame::Components::Lines].each do |line|
        Line.draw(line.attrs)
      end
    end
  end
end

FelFlame::Systems.new('RenderTriangles', priority: 999) do
  FelFlame::Components::RenderTriangles.each do |component|
    component.entities.each do |entity|
      entity.components[FelFlame::Components::Triangles].each do |triangle|
        Triangle.draw(triangle.attrs)
      end
    end
  end
end

FelFlame::Systems.new('RenderPixels', priority: 999) do
  FelFlame::Components::RenderPixels.each do |component|
    component.entities.each do |entity|
      entity.components[FelFlame::Components::Pixels].each do |pixel|
        Pixel.draw(pixel.attrs)
      end
    end
  end
end
FelFlame::Scenes.new 'RenderShapes'
FelFlame::Scenes::RenderShapes.add(
  FF::Sys::RenderQuads,
  FF::Sys::RenderRectangles,
  FF::Sys::RenderSquares,
  FF::Sys::RenderLines,
  FF::Sys::RenderTriangles,
  FF::Sys::RenderPixels,
)
FelFlame::Stage.add FelFlame::Scenes::RenderShapes
